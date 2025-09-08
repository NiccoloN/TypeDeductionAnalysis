#!/usr/bin/env python3

import argparse, subprocess, time, os, tempfile, pathlib, sys, re, shlex, csv
from shutil import copyfile
from statistics import mean
import pandas as pd

STAT_RE = re.compile(r"^\s*(\d+)\s+([A-Za-z0-9_.\-:]+)\s+-\s+(.*)$")

# Canonical stat descriptions emitted by the TDA pass
DESC_PTD = "Total pointer types to deduce"
DESC_TDP = "Transparent pointers deduced"
DESC_PDP = "Partially transparent pointers deduced"
DESC_NDP = "Opaque pointers (not deduced)"

# Abbreviations requested
ABBR_PTD = "Total ptr types"
ABBR_TDP = "Transparent"
ABBR_PDP = "Partially transparent"
ABBR_NDP = "Opaque"

def run(cmd):
    t0 = time.perf_counter()
    p = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    t1 = time.perf_counter()
    return p.returncode, t1 - t0, p.stdout, p.stderr

def must(ok, msg, err=""):
    if ok: return
    sys.stderr.write(msg + ("\n" + err if err else "") + "\n")
    sys.exit(1)

def parse_common_args(common_args: str):
    """
    Split common args into (compile_flags, link_flags, extra_sources).
    Files ending with .c/.cpp are treated as extra compilation units.
    """
    comp_flags, link_flags, extra_srcs = [], [], []
    for tok in shlex.split(common_args or ""):
        if tok.endswith(".c") or tok.endswith(".cpp"):
            extra_srcs.append(tok)
        else:
            if tok.startswith(("-l", "-L", "-Wl,")) or tok.endswith((".a", ".so", ".dylib")):
                link_flags.append(tok)
            else:
                comp_flags.append(tok)
    return comp_flags, link_flags, extra_srcs

def emit_ll(clang, srcs, outdir, add_flags, add_include_dir=None):
    lls = []
    os.makedirs(outdir, exist_ok=True)
    for s in srcs:
        ll = os.path.join(outdir, pathlib.Path(s).stem + ".ll")
        cmd = [clang, "-O0", "-S", "-emit-llvm", "-c", s, "-o", ll, *add_flags]
        if add_include_dir:
            cmd += [f"-I{add_include_dir}"]
        rc, _, _, err = run(cmd)
        must(rc == 0, f"error: emit-llvm (.ll) failed for {s}", err)
        lls.append(ll)
    return lls

def link_ll(llvm_link, lls, out_ll):
    os.makedirs(os.path.dirname(out_ll), exist_ok=True)
    if len(lls) == 1:
        if os.path.abspath(lls[0]) != os.path.abspath(out_ll):
            copyfile(lls[0], out_ll)
        return out_ll
    cmd = [llvm_link, "-S", *lls, "-o", out_ll]
    rc, _, _, err = run(cmd)
    must(rc == 0, "error: llvm-link failed", err)
    return out_ll

def do_opt(opt, in_ll, passes, out_ll, extra_args=()):
    cmd = [opt, f"-passes={passes}", in_ll, "-o", out_ll, "-S", "-stats", *extra_args]
    rc, t, out, err = run(cmd)
    must(rc == 0, f"error: opt failed ({passes})", err)
    return t, out, err, " ".join(cmd)

def filter_stats_only_pass(stats_text, pass_name):
    lines = []
    for line in stats_text.splitlines():
        m = STAT_RE.match(line)
        if not m:
            continue
        count, pname, desc = m.groups()
        if pname == pass_name or pname.startswith(pass_name + "-") or pname.startswith(pass_name + ":"):
            lines.append((int(count), pname, desc))
    return lines

def find_bench_dirs(tests_dir: pathlib.Path, only_list):
    """Benchmark dir is a folder with <dir>/<dir>.c|.cpp."""
    ignore_dir = tests_dir / ".ignore"
    def is_valid_dir(p: pathlib.Path):
        if not p.is_dir(): return False
        if ignore_dir in p.parents or p == ignore_dir: return False
        return (p / f"{p.name}.c").exists() or (p / f"{p.name}.cpp").exists()

    if only_list:
        out = []
        for name in set(only_list.split(",")):
            matches = [p for p in tests_dir.rglob(name) if is_valid_dir(p)]
            if matches:
                out.extend(matches)
            else:
                print(f"Warning: no benchmark directory found for '{name}'", file=sys.stderr)
        return sorted(out)
    else:
        return sorted([p for p in tests_dir.rglob('*') if is_valid_dir(p)])

def discover_sources(bench_dir: pathlib.Path):
    base = bench_dir.name
    cand_c = bench_dir / f"{base}.c"
    cand_cpp = bench_dir / f"{base}.cpp"
    if cand_c.exists(): return [str(cand_c.resolve())]
    if cand_cpp.exists(): return [str(cand_cpp.resolve())]
    # fallback: all .c/.cpp directly inside the dir
    return [str(q.resolve()) for q in bench_dir.iterdir() if q.is_file() and q.suffix in (".c", ".cpp")]

def derive_output_name(tmpdir, bench_name, kind):
    # place binaries and intermediates inside per-bench temp dir (persistent)
    return os.path.join(tmpdir, f"{bench_name}.{kind}.out")

def main():
    ap = argparse.ArgumentParser(
        description="Run baseline O3 vs TDA+O3; collect TDA stats; save wide CSV (bench x stats). Timing considers ONLY opt (compile) time; link time is ignored."
    )
    ap.add_argument("-tests-dir", required=True, help="Root dir containing benchmark folders (each with <dir>/<dir>.c|.cpp)")
    ap.add_argument("-only", help="Comma-separated list of benchmark names to include")
    ap.add_argument("-common-args", default="", help="Extra compile flags/files (includes/defines or helper .c/.cpp files)")
    ap.add_argument("--clang", default="clang")
    ap.add_argument("--opt", default="opt")
    ap.add_argument("--llvm-link", default="llvm-link")
    ap.add_argument("--tda-plugin", required=True, help="Path to TypeDeductionAnalysis.so")
    ap.add_argument("--tda-pass-name", default="tda")
    ap.add_argument("--cxx", action="store_true", help="Force clang++ (otherwise auto if any .cpp)")
    ap.add_argument("-n", "--runs", type=int, default=5, help="Measured runs per pipeline (average over these)")
    ap.add_argument("-w", "--warmup", type=int, default=1, help="Warmup runs per pipeline (discard timings)")
    ap.add_argument("--csv", default=None, help="(ignored) legacy CSV path")
    ap.add_argument("-debug", action="store_true", help="Pass --debug-only=tda to opt and save opt stdout to <bench>/bench.log")
    args = ap.parse_args()

    tests_dir = pathlib.Path(args.tests_dir).resolve()
    benches = find_bench_dirs(tests_dir, args.only)
    must(len(benches) > 0, f"error: no valid benchmarks found in {tests_dir}")

    max_name_len = max(len(b.name) for b in benches)

    comp_flags, link_flags, extra_srcs_from_common = parse_common_args(args.common_args)

    raw_rows = []  # dicts: {"bench","description","count"}
    timing = {}    # bench -> {"abs_time": float, "rel_pct": float}

    for bench_dir in benches:
        bench_name = bench_dir.name
        srcs = discover_sources(bench_dir)
        if not srcs:
            print(f"warning: no sources in '{bench_dir}'", file=sys.stderr)
            continue

        # Any .cpp among all sources (including extra common sources)?
        srcs_all = srcs + extra_srcs_from_common
        use_cxx = args.cxx or any(pathlib.Path(s).suffix == ".cpp" for s in srcs_all)
        clang = args.clang
        if use_cxx and os.path.basename(clang) == "clang":
            clang = clang + "++"

        # Per-bench include dir
        add_include = str(bench_dir.absolute())

        # Resolve extra srcs paths (relative to tests_dir, then bench_dir, then CWD)
        resolved_extra_srcs = []
        for es in extra_srcs_from_common:
            p = pathlib.Path(es)
            if not p.is_absolute():
                for base in (tests_dir, bench_dir, pathlib.Path.cwd()):
                    cand = (base / es)
                    if cand.exists():
                        p = cand
                        break
            resolved_extra_srcs.append(str(p.resolve()))

        # Persistent temp dir inside the benchmark folder (never deleted)
        tmp = os.path.join(str(bench_dir.resolve()), "temp")
        os.makedirs(tmp, exist_ok=True)

        # Optional debug log file (stdout of opt)
        log_fp = None
        if args.debug:
            log_fp = open(os.path.join(str(bench_dir.resolve()), "bench.log"), "w", encoding="utf-8")

        try:
            sources_for_compile = srcs + resolved_extra_srcs
            lls = emit_ll(clang, sources_for_compile, tmp, add_flags=comp_flags, add_include_dir=add_include)
            linked_ll = link_ll(args.llvm_link, lls, os.path.join(tmp, "linked.ll"))

            base_ll = os.path.join(tmp, "base.ll")
            tda_ll  = os.path.join(tmp, "tda.ll")

            base_passes = "default<O3>"
            tda_passes  = f"{args.tda_pass_name},default<O3>"
            tda_extra   = [f"-load-pass-plugin={args.tda_plugin}"]
            if args.debug:
                tda_extra.append("--debug-only=tda")

            bench_base = derive_output_name(tmp, bench_name, "base")
            bench_out  = derive_output_name(tmp, bench_name, "tda")

            def run_baseline_once():
                t_opt, out, _, _ = do_opt(args.opt, linked_ll, base_passes, base_ll)
                if log_fp and out:
                    log_fp.write(out)
                    log_fp.write("\n")
                    log_fp.flush()
                rc, _, _, err = run([clang, "-O0", base_ll, "-o", bench_base, *link_flags])
                must(rc == 0, f"error: baseline link failed for {bench_name}", err)
                return t_opt

            def run_tda_once():
                t_opt, out, stats, _ = do_opt(args.opt, linked_ll, tda_passes, tda_ll, extra_args=tda_extra)
                if log_fp and out:
                    log_fp.write(out)
                    log_fp.write("\n")
                    log_fp.flush()
                rc, _, _, err = run([clang, "-O0", tda_ll, "-o", bench_out, *link_flags])
                must(rc == 0, f"error: TDA link failed for {bench_name}", err)
                return t_opt, stats

            # Warmups (ignored timings)
            for _ in range(args.warmup):
                run_baseline_once()
            last_tda_stats_raw = ""
            for _ in range(args.warmup):
                _, stats = run_tda_once()
                last_tda_stats_raw = stats  # keep any warmup stats just in case

            # Measured runs
            base_opt_times = []
            tda_opt_times  = []

            for _ in range(args.runs):
                t_opt = run_baseline_once()
                base_opt_times.append(t_opt)

            for _ in range(args.runs):
                t_opt, stats = run_tda_once()
                tda_opt_times.append(t_opt)
                last_tda_stats_raw = stats  # keep last for parsing

            # Parse TDA stats and append to raw rows
            for count, pname, desc in filter_stats_only_pass(last_tda_stats_raw, args.tda_pass_name):
                raw_rows.append({
                    "bench": bench_name,
                    "description": desc,
                    "count": int(count)
                })

            # ---- Timing metrics per bench (compile only) ----
            tb_opt_avg = mean(base_opt_times) if base_opt_times else 0.0
            tt_opt_avg = mean(tda_opt_times)  if tda_opt_times  else 0.0

            abs_tda_time = max(0.0, tt_opt_avg - tb_opt_avg)
            rel_tda_pct = (abs_tda_time / tt_opt_avg * 100.0) if tt_opt_avg > 0 else 0.0

            timing[bench_name] = {"abs_time": abs_tda_time, "rel_pct": rel_tda_pct}

            # Aligned console summary (compile-only)
            label = f"{bench_name:<{max_name_len}}"
            print(f"{label} | opt {tt_opt_avg:.3f}s; overhead {abs_tda_time:.3f}s ({rel_tda_pct:.1f}%)")

        finally:
            if log_fp:
                log_fp.close()
            # NOTE: temp dir is intentionally kept; no deletion.

    # ---- Build wide DataFrame (rows=benches, columns=stats) ----
    benches_in_timing = sorted(timing.keys())
    if raw_rows:
        df_raw = pd.DataFrame(raw_rows)  # bench, description, count
        df_stats = (
            df_raw
            .groupby(["bench", "description"], as_index=False)["count"].sum()
            .pivot(index="bench", columns="description", values="count")
            .fillna(0)
            .astype(int)
        )
    else:
        df_stats = pd.DataFrame(index=benches_in_timing)

    # Ensure all four known stat columns exist (fill 0 if missing)
    for desc in (DESC_PTD, DESC_TDP, DESC_PDP, DESC_NDP):
        if desc not in df_stats.columns:
            df_stats[desc] = 0

    df_stats.columns.name = None

    # ---- Build final table with required columns and order ----
    df_final = pd.DataFrame(index=df_stats.index)
    df_final["abs. time (s)"] = pd.Series({b: timing.get(b, {}).get("abs_time", 0.0) for b in df_final.index})
    df_final["rel. time (%)"] = pd.Series({b: timing.get(b, {}).get("rel_pct", 0.0) for b in df_final.index})

    df_final[ABBR_PTD] = df_stats[DESC_PTD]
    df_final[ABBR_TDP] = df_stats[DESC_TDP]
    df_final[ABBR_PDP] = df_stats[DESC_PDP]
    df_final[ABBR_NDP] = df_stats[DESC_NDP]

    denom = df_final[ABBR_PTD].replace({0: pd.NA})
    df_final[f"{ABBR_TDP} (%)"] = (df_final[ABBR_TDP] / denom * 100).fillna(0.0)
    df_final[f"{ABBR_PDP} (%)"] = (df_final[ABBR_PDP] / denom * 100).fillna(0.0)
    df_final[f"{ABBR_NDP} (%)"] = (df_final[ABBR_NDP] / denom * 100).fillna(0.0)

    ordered_cols = [
        "abs. time (s)", "rel. time (%)",
        ABBR_PTD,
        ABBR_TDP, f"{ABBR_TDP} (%)",
        ABBR_PDP, f"{ABBR_PDP} (%)",
        ABBR_NDP, f"{ABBR_NDP} (%)",
    ]
    for c in ordered_cols:
        if c not in df_final.columns:
            df_final[c] = 0 if "(%)" not in c else 0.0
    df_final = df_final[ordered_cols]

    df_final["abs. time (s)"] = df_final["abs. time (s)"].round(3)
    df_final["rel. time (%)"] = df_final["rel. time (%)"].round(1)
    for c in [f"{ABBR_TDP} (%)", f"{ABBR_PDP} (%)", f"{ABBR_NDP} (%)"]:
        df_final[c] = df_final[c].round(1)

    output_csv = "stats.csv"
    df_final.to_csv(output_csv, index_label="bench")

    df_print = df_final.reset_index()
    with pd.option_context("display.max_rows", None,
                           "display.max_columns", None,
                           "display.width", 200,
                           "display.max_colwidth", None):
        print(df_print.to_string(index=False))

if __name__ == "__main__":
    main()

/******************************************************************************
*   Copyright 2021 Politecnico di Milano
*
*   Licensed under the Apache License, Version 2.0 (the "License");
*   you may not use this file except in compliance with the License.
*   You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*   Unless required by applicable law or agreed to in writing, software
*   distributed under the License is distributed on an "AS IS" BASIS,
*   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*   See the License for the specific language governing permissions and
*   limitations under the License.
*******************************************************************************/

extern "C" {
    #include "simple_random.h"
}

#include "user.h"

#include <cmath>
#include <vector>
#include <list>

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

#ifdef USER_JPEG_COMPRESS
#include "data/jpeg_image.h"
#else
static unsigned char mat_in[3][IMG_HEIGHT][IMG_WIDTH];
#endif

MEASURE_GLOBAL_VARIABLES()

typedef unsigned char  uint8_t;
typedef unsigned short uint16_t;

template<typename T> 
class Matrix3D {
    public:
        Matrix3D();
        Matrix3D(int width,int height):
        height(height),width(width){
            data = new T **[3];
                for(int i=0;i<3;i++){
                   data[i]=new T*[height];
                    for(int j=0;j<height;j++){
                        data[i][j]=new T[width];
                    }
                    
                }
        };

        Matrix3D(T data_in[3][IMG_HEIGHT][IMG_WIDTH]):
        height(IMG_HEIGHT),width(IMG_WIDTH){
            data = new T **[3];
                for(int i=0;i<3;i++){
                   data[i]=new T*[height];
                    for(int j=0;j<height;j++){
                        data[i][j]=new T[width];
                        for(int z=0;z<width;z++){
                            data[i][j][z]=data_in[i][j][z];
                        }
                    }
                    
                }
        };
        void resize(int new_width,int new_height){
            auto new_data=new T **[3];
            for(int i=0;i<3;i++){
                new_data[i]=new T*[new_height];
                for(int j=0;j<new_height;j++){
                    new_data[i][j]=new T[new_width];
                    for(int z=0;z<new_width;z++){
                        int z_clamped=z, j_clamped=j;
                        if(z>=width){
                           z_clamped=width-1; 
                        }
                        if(j>=height){
                            j_clamped=height-1; 
                        }
                        
                        new_data[i][j][z]=data[i][j_clamped][z_clamped];
                        
                    }
                    
                }
                
            }
            
            wipe_image();

            data=new_data;
            width=new_width;
            height=new_height;
        }
        void copy(const T *** data_in, const int width, const int height){
            if(data != nullptr){
                wipe_image();
            }
            data = new T **[3];
            for(int i=0;i<3;i++){
                data[i]=new T*[height];
                for(int j=0;j<height;j++){
                    data[i][j]=new T[width];
                    for(int z=0;z<width;z++){
                        data[i][j][z]=data_in[i][j][z];
                    }
                }
                
            }
        };

        void wipe_image(){
            for(int i=0;i<3;i++){
                    for(int j=0;j<height;j++){
                        delete[] data[i][j];
                    }
                    delete data[i];
                }
            delete[] data;
        }

        ~Matrix3D(){
            wipe_image();
        }

        
        T ***data;
        int height; 
        int width;
};

class BitStream{
    public:
        /**
         * @brief Construct a new Bit Stream object
         * 
         */
        BitStream():available_bits(16){};
        /**
         * @brief It writes bits into bitstream
         * 
         * @param n number to write
         * @param len bits len
         */
        void write_bits(int n, int len){
            while(len>0){
                if(len>available_bits){
                    next = next | (n>>(len-available_bits));
                    len-=available_bits;
                    available_bits=0;
                    
                }
                else{
                    auto diff=available_bits-len;
                    next = next | (n<<diff);
                    len-=available_bits;
                    available_bits=diff;
                }

                if(!available_bits){
                    bits.push_back(next);
                    next=0;
                    available_bits=16;
                }
            }
        };
        
    private:
        std::vector<uint16_t> bits;
        int available_bits=16;
        uint16_t next;

};

class JPEGCompressor{

    public:
        /**
         * @brief Construct a new JPEGCompressor object
         * 
         * @param mat_in 
         * @param width 
         * @param height 
         */
        JPEGCompressor(uint8_t mat_in[3][IMG_HEIGHT][IMG_WIDTH],int width, int height):
            in_img(Matrix3D<uint8_t>(mat_in)),
            preprocessed_img(Matrix3D<uint8_t>(width, height)),
            dct_img(Matrix3D<double>(width, height)){};


        /**
         * @brief It compress the mat_in image exploiting jpeg algorithm
         * 
         */
        void compress(){
            
            img_preprocess();
            
            for(int i=0;i<preprocessed_img.height;i=i+8){
                for(int j=0;j<preprocessed_img.width;j=j+8){
                    for(int c=0;c<3;c++){
                        if(c){
                            quantized_DCT(c,i,j,quant_chrominance);
                            entropy_encoding(c,i,j,DC_C_values,DC_C_codes_size,AC_C_values,AC_C_codes_size);
                        }
                        else{
                            quantized_DCT(c,i,j,quant_luminance);
                            entropy_encoding(c,i,j,DC_Y_values,DC_Y_codes_size,AC_Y_values,AC_Y_codes_size);
                        }
                    }
                }
            }
            
        };
    private:

        /**
         * @brief It preprocesses the image in order to perform jpeg compression
         * 
         */
        void img_preprocess(){
            // RGB to YCbCr using https://en.wikipedia.org/wiki/YCbCr#JPEG_conversion while substituting 128 from each to prepare for DCT
            for(int i=0;i<in_img.height;i++){
                for(int j=0;j<in_img.width;j++){
                        char r=in_img.data[0][i][j],g=in_img.data[1][i][j],b=in_img.data[2][i][j];
                        //Y component
                        preprocessed_img.data[0][i][j]=(0.299*r+0.587*g+0.114*b)-128;
                        //Cb component
                        preprocessed_img.data[1][i][j]=(-0.16874*r-0.33126*g+0.5*b)-128;
                        //Cr component
                        preprocessed_img.data[2][i][j]=(0.5*r-0.41869*g-0.08131*b)-128; 
                }        
            }

            //Repeat border to make the image divisible into 8x8 boxes
            if((in_img.height % 8 !=0) || (in_img.width % 8 !=0)){
                int new_height=(std::ceil(in_img.height/8)+1)*8;
                int new_width=(std::ceil(in_img.width/8)+1)*8;

                preprocessed_img.resize(new_width,new_height);
                dct_img.resize(preprocessed_img.width, preprocessed_img.height);
            }
        }
        /**
         * @brief It performs DCT and quantization on a 8x8 block
         * 
         * @param ch channel
         * @param id_x Top left corner x component
         * @param id_y Top left corner y component
         * @param quant_table Quantization table to be used
         */
        void quantized_DCT(int ch,int id_x, int id_y,const uint8_t quant_table[8][8]){
            for(int i=0;i<8;i++){
                for(int j=0;j<8;j++){
                    auto alpha_i = i==0? 1/std::sqrt(2) : 1;
                    auto alpha_j = j==0? 1/std::sqrt(2) : 1;
                    double dct=0;
                    for(int x=0;x<8;x++){
                        for(int y=0;y<8;y++){
                            dct+= preprocessed_img.data[ch][id_x+x][id_y+y]*std::cos(((2*x+1)*i*M_PI)/16)*std::cos(((2*y+1)*j*M_PI)/16);
                            
                        }
                    }
                    
                    dct=0.25*alpha_i*alpha_j*dct;
                   
                    dct_img.data[ch][id_x+i][id_y+j]=std::round(dct/quant_table[i][j]);
                    
                    
                }
            }
        }
        /**
         * @brief It returns the number of bit needed to represent a number
         * 
         * @param val number
         * @return int bit needed to represent val
         */
        int get_cat(int val){
            val=abs(val);
            int b=0;
            while(val){
                b++;
                val>>=1;
            }
            return b;
        }
        
        /**
         * @brief It performs entropy encoding of the 8x8 of Minimum Coded Units exploiting Huffman codes
         * 
         * @param ch channel
         * @param id_x top left corner x component
         * @param id_y Top left corner y component
         * @param dc_values Huffman table for DC terms
         * @param dc_codes_size Size of DC Huffman codes 
         * @param ac_values Huffman table for AC terms
         * @param ac_codes_size Size of AC Huffman codes 
         */
        void entropy_encoding(int ch,int id_x, int id_y, const uint16_t  dc_values[12], const uint8_t dc_codes_size[12],const  uint16_t  ac_values[16][11], const uint8_t ac_codes_size[16][11]){
            bool inv=false;
            int zeroes=0;
            int dc,dc_cat;

            if(id_x == 0 && id_y == 0){
                dc=dct_img.data[ch][id_x][id_y];
            }
            else{
                dc=dct_img.data[ch][id_x][id_y]-last_dc;
            }
            dc_cat=get_cat(dc);

            if(dc<0){
                dc+=(((1<<dc_cat)-1)) ;
            }

           
            compressed_img.write_bits((dc_values[dc_cat] << dc_cat) | dc,dc_codes_size[dc_cat]);
            

            std::vector<std::pair<int,int>> AC_component;
            for(int col=1;col<8;col++,inv=!inv){
                if(inv){
                    for(int x=col, y=0;x>=0 && y<=col;x--,y++){
                        auto ac=dct_img.data[ch][x+id_x][y+id_y];
                        if(ac || zeroes == 15){
                            AC_component.emplace_back(zeroes,ac);
                            zeroes=0;
                        }
                        else
                        {
                            zeroes++;
                        }

                    }
                 }
                else{
                    for(int x=0, y=col;x<8 && y>=0;x++,y--){
                        auto ac=dct_img.data[ch][x+id_x][y+id_y];
                        if(ac || zeroes == 15){
                            AC_component.emplace_back(zeroes,ac);
                            zeroes=0;
                        }
                        else
                        {
                            zeroes++;
                        }


                    }
                }

            }
            for(int row=1; row<8;row++,inv=!inv){
                if(inv){
                    for(int x=7, y=row;x>=1 && y<8;x--,y++){
                        auto ac=dct_img.data[ch][x+id_x][y+id_y];
                        if(ac || zeroes == 15){
                            AC_component.emplace_back(zeroes,ac);
                            zeroes=0;
                        }
                        else
                        {
                            zeroes++;
                        }
                     
                    }
                }
                else{
                    for(int x=row, y=7;x<7 && y>=0;x++,y--){
                         auto ac=dct_img.data[ch][x+id_x][y+id_y];
                        if(ac || zeroes == 15){
                            AC_component.emplace_back(zeroes,ac);
                            zeroes=0;
                        }
                        else
                        {
                            zeroes++;
                        }

                    }
                }
                
                
                
            }
            for(auto e : AC_component){
                int nz_cat=get_cat(e.first),ac_cat=get_cat(e.second);
                int ac=e.second>=0?e.second: e.second+((1<<ac_cat)-1);
                
                compressed_img.write_bits((ac_values[nz_cat][ac_cat] << ac_cat) | dc,ac_codes_size[nz_cat][ac_cat]);
            }
          
        };
    Matrix3D<uint8_t> in_img;
    Matrix3D<uint8_t> preprocessed_img;
    Matrix3D<double> dct_img;

    BitStream compressed_img;

  
    
   

    
    
    int last_dc=0;
    
    // Quantization tables
    const uint8_t quant_luminance[8][8]={{16,11,10,16,24,40,51,61},
                                         {12,12,14,19,26,58,60,55},
                                         {14,13,16,24,40,57,69,56},
                                         {14,17,22,29,51,87,80,62},
                                         {18,22,37,56,68,109,103,77},
                                         {24,35,55,64,81,104,113,92},
                                         {49,64,78,87,103,121,120,101},
                                         {72,92,95,98,112,100,130,99}};

    const uint8_t quant_chrominance[8][8]={{17,18,24,47,99,99,99,99},
                                           {18,21,26,66,99,99,99,99},
                                           {24,26,56,99,99,99,99,99},
                                           {47,66,99,99,99,99,99,99},
                                           {99,99,99,99,99,99,99,99},
                                           {99,99,99,99,99,99,99,99},
                                           {99,99,99,99,99,99,99,99},
                                           {99,99,99,99,99,99,99,99}};


    // Huffman tables as reported on https://www.w3.org/Graphics/JPEG/itu-t81.pdf 
    const uint8_t  DC_Y_codes_size [12] = {2, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18, 20};
    const uint16_t DC_Y_values[12] = {0x00,0x02,0x03,0x04,0x05,0x6,0x0E,0x1E,0x3E,0x7E,0xFE,0x1FE};
    
    const uint8_t  AC_Y_codes_size[16][11] = {  {4 ,3 ,4 ,6 ,8 ,10,12,14,18,25,26},
                                                {0 ,5 ,8 ,10,13,16,22,23,24,25,26},
                                                {0 ,6 ,10,13,20,21,22,23,24,25,26},
                                                {0 ,7 ,11,14,20,21,22,23,24,25,26},
                                                {0 ,7 ,12,19,20,21,22,23,24,25,26},
                                                {0 ,8 ,12,19,20,21,22,23,24,25,26},
                                                {0 ,8 ,13,19,20,21,22,23,24,25,26},
                                                {0 ,9 ,13,19,20,21,22,23,24,25,26},
                                                {0 ,9 ,17,19,20,21,22,23,24,25,26},
                                                {0 ,10,18,19,20,21,22,23,24,25,26},
                                                {0 ,10,18,19,20,21,22,23,24,25,26},
                                                {0 ,10,18,19,20,21,22,23,24,25,26},
                                                {0 ,11,18,19,20,21,22,23,24,25,26},
                                                {0 ,12,18,19,20,21,22,23,24,25,26},
                                                {0 ,13,18,19,20,21,22,23,24,25,26},
                                                {12,17,18,19,20,21,22,23,24,25,26}
                                            };

    const uint16_t  AC_Y_values[16][11] = {{0xa, 0x0, 0x1, 0x4, 0xb, 0x1a, 0x38, 0x78, 0x3f6, 0xff82, 0xff83},
                                          {0x0, 0xc, 0x39, 0x79, 0x1f6, 0x7f6, 0xff84, 0xff85, 0xff86, 0xff87, 0xff88},
                                          {0x0, 0x1b, 0xf8, 0x3f7, 0xff89, 0xff8a, 0xff8b, 0xff8c, 0xff8d, 0xff8e, 0xff8f},
                                          {0x0, 0x3a, 0x1f7, 0x7f7, 0xff90, 0xff91, 0xff92, 0xff93, 0xff94, 0xff95, 0xff96},
                                          {0x0, 0x3b, 0x3f8, 0xff97, 0xff98, 0xff99, 0xff9a, 0xff9b, 0xff9c, 0xff9d, 0xff9e},
                                          {0x0,0x7a, 0x3f9, 0xff9f, 0xffa0, 0xffa1, 0xffa2, 0xffa3, 0xffa4, 0xffa5, 0xffa6},
                                          {0x0, 0x7b, 0x7f8, 0xffa7, 0xffa8, 0xffa9, 0xffaa, 0xffab, 0xffac, 0xffad, 0xffae},
                                          {0x0, 0xf9, 0x7f9, 0xffaf, 0xffb0, 0xffb1, 0xffb2, 0xffb3, 0xffb4, 0xffb5, 0xffb6},
                                          {0x0, 0xfa, 0x7fc0, 0xffb7, 0xffb8, 0xffb9, 0xffba, 0xffbb, 0xffbc, 0xffbd, 0xffbe},
                                          {0x0, 0x1f8, 0xffbf, 0xffc0, 0xffc1, 0xffc2, 0xffc3, 0xffc4, 0xffc5, 0xffc6, 0xffc7},
                                          {0x0, 0x1f9, 0xffc8, 0xffc9, 0xffca, 0xffcb, 0xffcc, 0xffcd, 0xffce, 0xffcf, 0xffd0},
                                          {0x0, 0x1fa, 0xffd1, 0xffd2, 0xffd3, 0xffd4, 0xffd5, 0xffd6, 0xffd7, 0xffd8, 0xffd9},
                                          {0x0, 0x3fa, 0xffda, 0xffdb, 0xffdc, 0xffdd, 0xffde, 0xffdf, 0xffe0, 0xffe1, 0xffe2},
                                          {0x0, 0x7fa, 0xffe3, 0xffe4, 0xffe5, 0xffe6, 0xffe7, 0xffe8, 0xffe9, 0xffea, 0xffeb},
                                          {0x0, 0xff6, 0xffec, 0xffed, 0xffee, 0xffef, 0xfff0, 0xfff1, 0xfff2, 0xfff3, 0xfff4},
                                          {0xff7, 0xfff5, 0xfff6, 0xfff7, 0xfff8, 0xfff9, 0xfffa, 0xfffb, 0xfffc, 0xfffd, 0xfffe}};
    
    const uint8_t  DC_C_codes_size [12] = {3, 3, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    const uint16_t DC_C_values[12] = {0x00,0x01,0x02,0x06,0x0E,0x1E,0x3E,0x7E,0xFE,0x1FE,0x3FE,0x7FE};
    
    const uint8_t  AC_C_codes_size[16][11] = {{2,2,3,4,5,5,6,7,9,10,12},
                                              {0,4,6,8,9,11,12,16,16,16,16},
                                              {0,5,8,10,12,15,16,16,16,16,16},
                                              {0,5,8,10,12,16,16,16,16,16,16},
                                              {0,6,9,16,16,16,16,16,16,16,16},
                                              {0,6,10,16,16,16,16,16,16,16,16},
                                              {0,7,11,16,16,16,16,16,16,16,16},
                                              {0,7,11,16,16,16,16,16,16,16,16},
                                              {0,8,16,16,16,16,16,16,16,16,16},
                                              {0,9,16,16,16,16,16,16,16,16,16},
                                              {0,9,16,16,16,16,16,16,16,16,16},
                                              {0,9,16,16,16,16,16,16,16,16,16},
                                              {0,9,16,16,16,16,16,16,16,16,16},
                                              {0,11,16,16,16,16,16,16,16,16,16},
                                              {0,14,16,16,16,16,16,16,16,16,16},
                                              {10,15,16,16,16,16,16,16,16,16,16}};
    const uint16_t  AC_C_values[16][11] = {  {0x0, 0x1, 0x4, 0xa, 0x18, 0x19, 0x38, 0x78, 0x1f4, 0x3f6, 0xff4},
                                            {0x0, 0xb, 0x39, 0xf6, 0x1f5, 0x7f6, 0xff5, 0xff88, 0xff89, 0xff8a, 0xff8b},
                                            {0x0, 0x1a, 0xf7, 0x3f7, 0xff6, 0x7fc2, 0xff8c, 0xff8d, 0xff8e, 0xff8f, 0xff90},
                                            {0x0, 0x1b, 0xf8, 0x3f8, 0xff7, 0xff91, 0xff92, 0xff93, 0xff94, 0xff95, 0xff96},
                                            {0x0, 0x3a, 0x1f6, 0xff97, 0xff98, 0xff99, 0xff9a, 0xff9b, 0xff9c, 0xff9d, 0xff9e},
                                            {0x0, 0x3b, 0x3f9, 0xff9f, 0xffa0, 0xffa1, 0xffa2, 0xffa3, 0xffa4, 0xffa5, 0xffa6},
                                            {0x0, 0x79, 0x7f7, 0xffa7, 0xffa8, 0xffa9, 0xffaa, 0xffab, 0xffac, 0xffad, 0xffae},
                                            {0x0, 0x7a, 0x7f8, 0xffaf, 0xffb0, 0xffb1, 0xffb2, 0xffb3, 0xffb4, 0xffb5, 0xffb6},
                                            {0x0, 0xf9, 0xffb7, 0xffb8, 0xffb9, 0xffba, 0xffbb, 0xffbc, 0xffbd, 0xffbe, 0xffbf},
                                            {0x0, 0x1f7, 0xffc0, 0xffc1, 0xffc2, 0xffc3, 0xffc4, 0xffc5, 0xffc6, 0xffc7, 0xffc8},
                                            {0x0, 0x1f8, 0xffc9, 0xffca, 0xffcb, 0xffcc, 0xffcd, 0xffce, 0xffcf, 0xffd0, 0xffd1},
                                            {0x0, 0x1f9, 0xffd2, 0xffd3, 0xffd4, 0xffd5, 0xffd6, 0xffd7, 0xffd8, 0xffd9, 0xffda},
                                            {0x0, 0x1fa, 0xffdb, 0xffdc, 0xffdd, 0xffde, 0xffdf, 0xffe0, 0xffe1, 0xffe2, 0xffe3},
                                            {0x0, 0x7f9, 0xffe4, 0xffe5, 0xffe6, 0xffe7, 0xffe8, 0xffe9, 0xffea, 0xffeb, 0xffec},
                                            {0x0, 0x3fe0, 0xffed, 0xffee, 0xffef, 0xfff0, 0xfff1, 0xfff2, 0xfff3, 0xfff4, 0xfff5},
                                            {0x3fa, 0x7fc3, 0xfff6, 0xfff7, 0xfff8, 0xfff9, 0xfffa, 0xfffb, 0xfffc, 0xfffd, 0xfffe}};
    
    
};


/**
 * @brief Actual jpeg compression implementation
 * 
 */
static void jpeg_compress_routine(){

   JPEGCompressor compressor(mat_in,IMG_WIDTH,IMG_HEIGHT);
   
   
   compressor.compress();

    
}

/**
 * @brief It performs jpeg compression on a random RGB image. The execution time is measured through user defined MEASURE_START()/MEASURE_STOP() macros. 
 */
extern "C" int main(){
#ifndef USER_JPEG_COMPRESS
    
    for(int i=0;i<3;i++){
        for(int j=0;j<IMG_HEIGHT;j++){
            for(int z=0;z<IMG_WIDTH;z++){
                mat_in[i][j][z]=random_get()*256;
            }
            
        }
        
        
    }
#endif
    

    MEASURE_START();
    
    jpeg_compress_routine();
    
    MEASURE_STOP();


}
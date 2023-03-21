typedef unsigned short hword;
#define VRAM 0x06000000
#define BGR(r,g,b) ((b<<10)+(g<<5)+r)
#include "8x8ascii.h"

void draw_point(hword x,hword y, hword color);
void locate(hword x,hword y);
void print_ascii(unsigned char ascii_num);
void prints (unsigned char *str);

hword j, p,cx,cy;

int main(void){
hword *ptr;
int i,s;

ptr=(hword *)0x04000000;
*ptr=0x0F03;




    for(i=0;i<240;i++){
        for(s=0;s<160;s++){
            draw_point(i,s,BGR(0x0C,0x00,0x0C));
                            }
                }   

        cx=13,cy=9;
        locate(cx,cy);
        prints("1116211060");


            while(1)
            return 0;


}

void draw_point(hword x,hword y, hword color){
    hword *ptr;
    ptr=(hword*)VRAM;
    ptr=ptr+x+(y*240);
    *ptr=color;
}

void locate(hword x,hword y){
    j=x*8;
    p=y*8;
}

void print_ascii(unsigned char ascii_num){
    hword tx,ty;
    hword color1=BGR(0x1F,0x1F,0x1F);
    hword color2=BGR(0x0C,0x00,0x0C);
    unsigned char cbit;
    for(ty=0;ty<8;ty++){
        cbit=0x80;
        for(tx=0;tx<8;tx++){
            if((char8x8[ascii_num][ty]&cbit)==cbit){
                draw_point(tx+j,ty+p,color1);
            }else{
                draw_point(tx+j,ty+p,color2);
            }
            cbit=cbit>>1;
        }
        
    }

}

void prints (unsigned char *str){
    while(*str){
        locate(cx++,cy);
        print_ascii(*str++);
    }

}
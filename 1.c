typedef unsigned short hword;
#define VRAM 0x06000000
#define BGR(r, g, b) ((b<<10)+(g<<5)+r)

void draw_point(hword x,hword y,hword color);

int main(void){
    hword *ptr;
    hword x;
    x=120;
    hword BLUE=BGR(0x00,0x00,0x1F);
    ptr=(hword*)0x04000000;
    *ptr=0x0F03;

    int i;
    for(i=0;i<=160;i++){
        draw_point(x,i,BLUE);
    }

        while (1)
        return 0;

}

void draw_point(hword x,hword y,hword color){
    hword *ptr;
    ptr=(hword*)VRAM;
    ptr=ptr+x+(y*240);
    *ptr=color;

}

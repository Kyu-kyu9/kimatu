typedef unsigned short hword;
#define VRAM 0x06000000
#define BGR(r,g,b) ((b<<10)+(g<<5)+r)
void darw_point(hword x, hword y,hword color);

int main (void){
    hword *ptr;
    int i,j;
    ptr=(hword *)0x04000000;
    *ptr=0x0F03;


    for(i=120;i<131;i++){
        for(j=80;j<91;j++){
            darw_point(i,j,BGR(0x1F,0x1F,0x1F));
        }
    }
}


void darw_point(hword x, hword y,hword color){
    hword *ptr;
    ptr=(hword *)VRAM;
    ptr=ptr+x+(y*240);
    *ptr=color;
}
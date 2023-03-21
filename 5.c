typedef unsigned short hword;
#define VRAM 0x06000000
#define BGR(r,g,b) ((b<<10)+(g<<5)+r)
#define A 1<<0

hword a=1;

void draw_point(hword x,hword y,hword color);

int main(void){
    hword *ptr1,*ptr2;
    hword tmp,key,flag=1;
    int i;

    ptr1=(hword *)0x04000000;
    *ptr1=0x0F03;
    while(1){

    
    ptr2=(hword *)0x04000130;
    tmp=*ptr2;
    key=~tmp&0x00FF;

    switch(key){
        case A:
        for(i=0;i<150000;i++){}
        if(flag==1){
        draw_point(a,a,BGR(0x1F,0x00,0x00));
        a=a+2;
        flag=0;
        if(a==19){
            a=1;
            }
        }
        break;
        

        default:
        flag=1;
        break;
            }
    }
}

void draw_point(hword x,hword y,hword color){
    hword *ptr;
    ptr=(hword *)VRAM;
    ptr=ptr+x+(y*240);
    *ptr=color;
}

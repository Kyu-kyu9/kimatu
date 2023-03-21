typedef unsigned short hword;
#define VRAM 0x06000000
#define BGR(r,g,b) ((b<<10)+(g<<5)+r)
#define RIGHT 1<<4
#define LEFT 1<<5


void draw_point(hword x,hword y,hword color);

int main(void){
    hword *ptr1,*ptr2;
    hword tmp,key;
    int i,j;

    ptr1=(hword*)0x04000000;
    *ptr1=0x0F03;

    for(i=0;i<240;i++){
        for(j=0;j<160;j++){
            draw_point(i,j,BGR(0x1F,0x1F,0x1F));
        }
    }


    while(1){
        ptr2=(hword*)0x04000130;
        tmp=*ptr2;
        key=~tmp&0x00FF;
        switch(key){

                case LEFT:
                for(i=0;i<240;i++){
                    for(j=0;j<160;j++){
                        if(j<81){
                            draw_point(i,j,BGR(0x00,0x1F,0x1F));
                        }else{
                            draw_point(i,j,BGR(0x1F,0x1F,0x00));
                        }
                    }
                }
                    break;

                case RIGHT:
                for(i=0;i<240;i++){
                    for(j=0;j<160;j++){
                        if(j<=54){
                            draw_point(i,j,BGR(0x1F,0x1F,0x00));
                        }else if(j<=106){
                            draw_point(i,j,BGR(0x00,0x1F,0x00));
                        }else {
                             draw_point(i,j,BGR(0x1F,0x00,0x00));
                        }
                    }
                }
                break;

                default:
                for(i=0;i<240;i++){
                    for(j=0;j<160;j++){
                        draw_point(i,j,BGR(0x1F,0x1F,0x1F));
                                        }
                                }
                                break;


        }

    }


}

void draw_point(hword x,hword y,hword color){
    hword *ptr;
    ptr=(hword*)VRAM;
    ptr=ptr+x+(y*240);
    *ptr=color;
}
clear;
close all;
im=ones(2000,900);

for j=1:2000
    for i=1:300
        im(j,i)=0;
    endfor
    for i=600:900
        if rem(i,3)==0
            if rem(j,3)==0
                im(j,i)=0;
            endif;
        endif;
    endfor;
endfor;

for i=300:600
    for j=1:200
        if rem(i,2)==0
            if rem(j,2)==0
                im(j,i)=0;
            endif;
        endif;
    endfor;
    for j=1000:1200
        if rem(i,2)==0
            if rem(j,2)==0
                im(j,i)=0;
            endif;
        endif;
    endfor;
endfor;


 imwrite(im, "D:\\Amith\\MTech\\Assignments\\DIP\\image\\dither.jpg");

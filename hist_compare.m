close all;
clear;
im1=imread("D:\\Amith\\MTech\\Assignments\\DIP\\image\\flower.jpg");
im3=imread("D:\\Amith\\MTech\\Assignments\\DIP\\image\\dino.png");
sz1 = size(im1);
n=rand(sz1);
n=(n-0.5)*30;
im2=min((im1+n),255);

figure, imshow(im1);
figure, imshow(im2);
figure, imshow(im3);

h1=imhist(im1);
h2=imhist(im2);
h3=imhist(im3);

c1=sum(h1);
c3=sum(h3);
% h1=h1/c1;
% h2=h2/c1;
% h3=h3/c1;



d_12=sum(abs(h1-h2));
d_13=sum(abs(h1-h3));

if(d_12 > 50000)
printf("Image 1 and 2 Different\n");
else
printf("Image 1 and 2 Similar\n");
endif;
if(d_13 > 50000)
printf("Image 1 and 3 Different\n");
else
printf("Image 1 and 3 Similar\n");
endif;

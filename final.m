clc;clear all;close all;

I=imread('road9.jpg');
figure,imshow(I);
title('original image');

J=rgb2gray(I);
figure,imshow(J);
title('grayscale image');
K=imadjust(J,[0.4,0.7],[]);
figure,imshow(K);
title('adjusted image');

level=graythresh(K);
I=imbinarize(K,level);
figure,imshow(I);
title('binary image after tresholding');

B=medfilt2(I);
figure,imshow(B);
title('median filtered image');

im=bwareaopen(B,1200);
figure,imshow(im);
title('removing connected components (pixel <6)');

BW=bwmorph(im,'remove');
figure,imshow(BW);
title('morphological filtering');

BW1=edge(BW,'sobel');
figure,imshow(BW1);
title('edge detection(sobel)');

H=vision.AlphaBlender;
J=im2single(J);
BW1=im2single(BW1);
Y=step(H,J,BW1);
figure,imshow(Y);
title('overlay on grayscale image');

figure,imshow(J);
hold on;
contour(BW1,100);
hold off;









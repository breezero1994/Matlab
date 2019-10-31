clear
clc

I = imread('image\cameraman.tif');
subplot(131);imshow(I);
J1 = imrotate(I, 30, 'nearest');
subplot(132);imshow(J1);
J2 = imrotate(J1, 45, 'nearest');
subplot(133);imshow(J2);
clear
clc

I = imread('image\pears.png');
I = rgb2gray(I);
subplot(121); imshow(I);title('ԭͼ')
I = double(I);
B = zeros(size(I)) + 255;
H = size(I);
B(50+1:H(1), 50+1:H(2)) = I(1:H(1)-50, 1:H(2)-50); % ����ƽ�Ʊ任
C(1:H(1), 1:H(2)) = B(H(1):-1:1,1:H(2));
D = imrotate(C, 30, 'nearest');
E = imresize(D, 0.2, 'nearest');
subplot(122);imshow(uint8(E));
title('���ϱ任��')



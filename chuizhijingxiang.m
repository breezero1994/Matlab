clear
clc

I = imread('image\office.jpg');
I = rgb2gray(I);
subplot(1, 2, 1);
imshow(I)
title('ԭͼ');
I = double(I);
H = size(I);
I2(1 : H(1, 1), 1 : H(1, 2)) = I(H(1, 1) : -1 : 1, 1 : H(1, 2));
% ˮƽ����
subplot(1, 2, 2);
imshow(uint8(I2))
title('��ֱ����')
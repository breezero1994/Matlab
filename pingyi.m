clear
clc

% ��ȡӲ��ͼƬ
I = imread('image\coins.png');
% ��һ�����еĵ�һ����ͼ
subplot(1,2,1)
% ��ʾͼ��
imshow(I);
title('ԭʼͼ��')
% ����һ����Iͬ��С��ȫ���������
I1 = zeros(size(I));
H = size(I);
Move_x = 50;
Move_y = 50;
I1(Move_x + 1 : H(1, 1), Move_y + 1 : H(1, 2)) = I(1 : H(1, 1) - Move_x, 1 : H(1, 2) - Move_y);
subplot(1, 2, 2);
imshow(uint8(I1));% ��double���͵�ͼ��ת��Ϊ256�Ҷ�ͼ�����
title('ƽ�ƺ�ͼ��');





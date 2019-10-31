clear
clc

% 读取硬币图片
I = imread('image\coins.png');
% 画一行两列的第一个子图
subplot(1,2,1)
% 显示图像
imshow(I);
title('原始图像')
% 生成一个和I同大小的全是零的数据
I1 = zeros(size(I));
H = size(I);
Move_x = 50;
Move_y = 50;
I1(Move_x + 1 : H(1, 1), Move_y + 1 : H(1, 2)) = I(1 : H(1, 1) - Move_x, 1 : H(1, 2) - Move_y);
subplot(1, 2, 2);
imshow(uint8(I1));% 将double类型的图像转化为256灰度图像并输出
title('平移后图像');






clear
clc

I = imread('image\moon.tif');
I = double(I);
H = size(I);
B = zeros(H(1) + round(H(2) * tan(pi/6)), H(2));
for a = 1:H(1)
    for b = 1:H(2)
        B(a + round(b * tan(pi/6)), b) = I(a, b); % ¸³Öµ
    end
end
imshow(uint8(B))
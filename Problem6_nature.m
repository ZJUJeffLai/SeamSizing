% Problem6
% nature.jpeg
% From: https://www.pexels.com/search/nature

%% Read the original Image
clc;clf;clear all;
%im1 = zeros(333,500):
im1 = double(imread('nature.jpeg'));
im1 = uint8(im1);
subplot(3,1,2);
imshow(im1);
title('original');
hold on

%%
im2 = im1;
energyImg = energy_img(im2);
for i = 1:80
    [im2,~] = decrease_width(im2,energyImg);
    energyImg = energy_img(im2);
end
energyImg = energy_img(im2);
for j = 1:50
    [im2,~] = decrease_height(im2,energyImg);
    energyImg = energy_img(im2);
end
subplot(3,1,3);
imshow(im2);
title('seamsizing');
hold on
%%
im3 = imresize(im1,[283,420]);
subplot(3,1,1);
imshow(im3);
title('matlab imresize');
hold on





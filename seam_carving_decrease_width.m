%seam_carving_decrease_width.m 
%Reduces the width of the image by 100 pixels

%%  inputSeamCarvingPrague.jpg
clc;clf;clear all;
im = imread('inputSeamCarvingPrague.jpg');
%imshow(reducedColorImg);
energyImg = energy_img(im);
for i = 1:100
    [im,~] = decrease_width(im,energyImg);
    energyImg = energy_img(im);
end
imshow(im);
imwrite(im,'outputReduceWidthPrague.png');

%%  inputSeamCarvingMall.jpg
clc;clf;clear all;
im = imread('inputSeamCarvingMall.jpg');
%imshow(reducedColorImg);
energyImg = energy_img(im);
for i = 1:100
    [im,~] = decrease_width(im,energyImg);
    energyImg = energy_img(im);
end
imshow(im);
imwrite(im,'outputReduceWidthMall.png');
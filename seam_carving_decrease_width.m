%seam_carving_decrease_width.m 
%Reduces the width of the image by 100 pixels

%%  inputSeamCarvingPrague.jpg
clc;clf;clear all;
reducedColorImg = imread('inputSeamCarvingPrague.jpg');
%imshow(reducedColorImg);
energyImg = energy_img(reducedColorImg);
for i = 1:100
    [reducedColorImg,~] = decrease_width(reducedColorImg,energyImg);
    energyImg = energy_img(reducedColorImg);
end
imshow(reducedColorImg);
imwrite(reducedColorImg,'outputReduceWidthPrague.png');

%%  inputSeamCarvingMall.jpg
clc;clf;clear all;
reducedColorImg = imread('inputSeamCarvingMall.jpg');
%imshow(reducedColorImg);
energyImg = energy_img(reducedColorImg);
for i = 1:100
    [reducedColorImg,~] = decrease_width(reducedColorImg,energyImg);
    energyImg = energy_img(reducedColorImg);
end
imshow(reducedColorImg);
imwrite(reducedColorImg,'outputReduceWidthMall.png');
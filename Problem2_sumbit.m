%For Problem2

%seam_carving_decrease_height.m
%Reduce the height by 50 pixels

%%  inputSeamCarvingPrague.jpg
clc;clf;clear all;
reducedColorImg = imread('inputSeamCarvingPrague.jpg');
%imshow(reducedColorImg);
energyImg = energy_img(reducedColorImg);
for i = 1:50
    [reducedColorImg,~] = decrease_height(reducedColorImg,energyImg);
    energyImg = energy_img(reducedColorImg);
end
imshow(reducedColorImg);
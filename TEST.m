% test

%{
clc;clf;clear all;
im1 = double(imread('lake_tahoe.jpg'));
im1 = uint8(im1);
imshow(im1);
str = 'original';
title(str);
%}
%{
clc;clear;

im = imread('inputSeamCarvingPrague.jpg');
energyImg = energy_img(im);
% greedy algorithm
vertical_seam = greedy_ver_seam(energyImg);
% Dynamic algorithm
cumulativeEnergyMap = cumulative_min_energy_map(energyImg,'VERTICAL');
ver_seam1 = find_vertical_seam(cumulativeEnergyMap);

% compare
dif = vertical_seam - ver_seam1;
view_seam(im,vertical_seam,'VERTICAL')
view_seam(im,ver_seam1,'VERTICAL')
%}


% [a,ind] = min([2,3])
%{
RGB = imread('coins.jpeg');
imshow(RGB);
gra = rgb2gray(RGB);
imshow(gra);
pause;
energyImg = energy_img(RGB);
imshow(energyImg);
pause;

VERT = cumulative_min_energy_map(energyImg, 'VERTICAL');
imshow(VERT);
pause;

HORI = cumulative_min_energy_map(energyImg, 'HORIZONTAL');
imshow(HORI);
pause
%}

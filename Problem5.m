Problem5
%% 3(a):
%the energy function output for the provided image inputSeamCarvingPrague.jpg
clc;clf;clear all;
im = double(imread('inputSeamCarvingPrague.jpg'));
im = uint8(im);
energyImg = energy_img_v2(im);
figure(1);
imagesc(energyImg);

%% 3(b): 'vertical'
seamDirection = 'VERTICAL';
cumulativeEnergyMap = cumulative_min_energy_map(energyImg,seamDirection);
figure(2);
imagesc(cumulativeEnergyMap);

%
verticalSeam = find_vertical_seam(cumulativeEnergyMap);

%% 3(b):'HORIZONTAL'
seamDirection = 'HORIZONTAL';
cumulativeEnergyMap = cumulative_min_energy_map(energyImg,seamDirection);
figure(3);
imagesc(cumulativeEnergyMap);

%
horizontalSeam = find_horizontal_seam(cumulativeEnergyMap);

%% 4 Vertical
figure(4);
view_seam(im,verticalSeam,'VERTICAL');

%% 4 Horizontal
figure(5);
view_seam(im,horizontalSeam,'HORIZONTAL');

% Optional #4
clc;clear;

im = imread('inputSeamCarvingPrague.jpg');
subplot(3,1,1);
imshow(im);
title('Origin')

energyImg = energy_img(im);
% greedy algorithm
vertical_seam = greedy_ver_seam(energyImg);
% Dynamic algorithm
cumulativeEnergyMap = cumulative_min_energy_map(energyImg,'VERTICAL');
ver_seam1 = find_vertical_seam(cumulativeEnergyMap);

% compare
dif = vertical_seam - ver_seam1;
subplot(3,1,2);
view_seam(im,vertical_seam,'VERTICAL')
title('Greedy Algorithm')
subplot(3,1,3);
view_seam(im,ver_seam1,'VERTICAL')
title('Dynamic Programming')

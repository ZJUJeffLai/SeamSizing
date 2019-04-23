clc;clf;clear all;
im = imread('inputSeamCarvingPrague.jpg');
energyImg = energy_img(im);
imagesc(energyImg)
%Problem6
%%
clc;clf;clear all;
im = double(imread('midway.jpg'));
im = uint8(im);
%imshow(reducedColorImg);
energyImg = energy_img(im);
for i = 1:2000
    [im,~] = decrease_width(im,energyImg);
    energyImg = energy_img(im);
end
imshow(im);
imwrite(im,'outputmidway.png');
%%
clc;clf;clear all;
im = double(imread('midway.jpg'));
im = uint8(im);
%imshow(reducedColorImg);
energyImg = energy_img(im);
for i = 1:80
    [im,~] = decrease_width(im,energyImg);
    energyImg = energy_img(im);
end
%imshow(im);
imwrite(im,'outputmidway_2.png');
%%
clc;clf;clear all;
im = double(imread('midway.jpg'));
im = uint8(im);
%imshow(reducedColorImg);
energyImg = energy_img(im);
for i = 1:200
    [im,~] = decrease_width(im,energyImg);
    energyImg = energy_img(im);
end
%imshow(im);
imwrite(im,'outputmidway_3.png');
%%



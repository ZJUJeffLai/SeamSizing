% Problem6
% nature.jpeg
% From: https://www.pexels.com/search/nature

% dense_city_SF.jpg
% From: https://www.modernluxury.com/san-francisco/story/san-francisco-the-second-most-dense-city-america

% YJLee.jph
% https://web.cs.ucdavis.edu/~yjlee/

% lake_tahoe.jph
% https://www.forbes.com/sites/trevornace/2018/04/05/snowiest-march-in-decades-fills-lake-tahoe-with-enough-water-for-three-years/#1263829f7053


%% Read the original Image
clc;clf;clear all;
im1 = double(imread('lake_tahoe.jpg'));
im1 = uint8(im1);
subplot(3,1,1);
imshow(im1);

[m,n,~] = size(im1);
str_m = num2str(m);
str_n = num2str(n);
tit = strcat('Origin (dimention:', str_m, ' by ', str_n,')');
title(tit);

hold on

%%
im2 = im1;
energyImg = energy_img(im2);
I = floor(n/2);
for i = 1:I
    [im2,~] = decrease_width(im2,energyImg);
    energyImg = energy_img(im2);
  
end
energyImg = energy_img(im2);
J = floor(m/2);
for j = 1:J
    [im2,~] = decrease_height(im2,energyImg);
    energyImg = energy_img(im2);
end
subplot(3,1,2);
imshow(im2);

[m,n,~] = size(im2);
str_m = num2str(m);
str_n = num2str(n);
tit = strcat('seamsizing (dimention:', str_m, ' by ', str_n,')');
title(tit);

% title('seamsizing');
hold on
%%
im3 = imresize(im1,0.5);
% im3 = imresize(im1,[283,420]);
subplot(3,1,3);
imshow(im3);

[m,n,~] = size(im3);
str_m = num2str(m);
str_n = num2str(n);
tit = strcat('Matlab imresize (dimention:', str_m, ' by ', str_n,')');
title(tit);

% title('matlab imresize');

hold on





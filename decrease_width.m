function [reducedColorImg,reducedEnergyImg] = decrease_width(im,energyImg)
%Input im: 3D uint8
%Input energyImg: double 2D
%Output reducedColorImg: 3D same as the input image but with ...
%its width reduced by one pixel
%Output reducedEnergyImg: double same as the input energyImg...
%but with its width reduced by one piexl

[length,width,height] = size(im);
%Initialize reducedColorImg with its width reduced by one pixel
M = zeros(length,width-1,height);%3D
%Get verticalSeam
cumulativeEnergyMap = cumulative_min_energy_map(energyImg,'VERTICAL');
verticalSeam = find_vertical_seam(cumulativeEnergyMap);
%view_seam(im,verticalSeam,'VERTICAL');

for i = 1:length
    j = verticalSeam(i);
    M(i,1:j-1,:) = im(i,1:j-1,:);
    M(i,j:width-1,:) = im(i,j+1:width,:);
end
reducedEnergyImg = energy_img(M);
reducedColorImg = uint8(M);
end
function [reducedColorImg, reducedEnergyImg] = decrease_height(im,energyImg)
im = permute(im,[2 1 3]);
[length,width,height] = size(im);
M = uint8(zeros(length,width-1,height));
cumulativeEnergyMap=cumulative_min_energy_map(energyImg,'HORIZONTAL');
horizontalSeam=find_horizontal_seam(cumulativeEnergyMap);
for i = 1:length
    j = horizontalSeam(i);
    M(i,1:j-1,:) = im(i,1:j-1,:);
    M(i,j:width-1,:) = im(i,j+1:width,:);
end
M = permute(M,[2 1 3]);
reducedColorImg = uint8(M);
reducedEnergyImg = energy_img(M);
end
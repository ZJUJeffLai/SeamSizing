function [ energyImg ] = energy_img_v2( im )
% compute the energy at each pixel using...
% the magnitude of the x and y gradients
% Input: im is color image
% Output: energyImg

% Transform im to gray image
grayimage = double(rgb2gray(im));
% Calculate dx and dy
[dx, dy] = imgradient(grayimage,'prewitt');
energyImg = (dx.^2 + dy.^2).^(1/2);
end

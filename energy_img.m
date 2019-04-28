function [ energyImg ] = energy_img( im )
% compute the energy at each pixel using...
% the magnitude of the x and y gradients
% Input: im is color image
% Output: energyImg

% Transform im to gray image
grayimage = rgb2gray(im);

% Calculate dx and dy
[dx, dy] = imgradient(grayimage);
%%% [dx,dy] = imgradientxy(grayimage); %%%%
SumOfSquare = dx.^2 + dy.^2;
energyImg = double(sqrt(SumOfSquare));
end


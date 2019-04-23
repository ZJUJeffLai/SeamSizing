function [horizontalSeam] = find_horizontal_seam(cumulativeEnergyMap)
%compute the optimal horizontal seam
%output: indices of the pixels

M = transpose(cumulativeEnergyMap);
horizontalSeam = find_vertical_seam(M);
end


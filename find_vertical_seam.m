function [verticalSeam] = find_vertical_seam(cumulativeEnergyMap) 
%compute the optimal vertical seam
%input:cumulativeEnergyMap a 2D matrix of datatype double 
%output: verticalSeam a vector containing the...
%column indices of the pixels which form the seam for each row. 
M = cumulativeEnergyMap;
[rows, columns] = size(M);
% Initialization
verticalSeam = [];
% index is the index of the minimum one
[~,index] = min(M(rows,:));
% Add the last column index
verticalSeam(rows) = index;

for r = rows-1:-1:1
    if index == 1
        [~,ind] = min([M(r,index), M(r,index+1)]);
        if ind ~= 1
            verticalSeam(r) = index+1;
            index = index+1;
        else
            verticalSeam(r) = index;
        end
    elseif index == columns
        [~, ind] = min([M(r,index-1), M(r,index)]);
        if ind ~= 1
            verticalSeam(r) = index;
        else
            verticalSeam(r) = index-1;
            index = index - 1;
        end
    
    else
        [~, ind] = min([M(r,index-1), M(r,index), M(r,index+1)]);
        if ind == 1
            verticalSeam(r) = index-1;
            index = index - 1;
        elseif ind == 2
            verticalSeam(r) = index;
        else
            verticalSeam(r) = index+1;
            index = index+1;
        end
    end
end
end


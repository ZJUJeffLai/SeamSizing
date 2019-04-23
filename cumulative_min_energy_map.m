function [ cumulativeEnergyMap ] = cumulative_min_energy_map(energyImg,seamDirection)
% compute minimum cumulative energy
% Input: energyImg--2D matrix of datatype double 
% Input:seamDirection must be the strings ¡®HORIZONTAL¡¯...
% or ¡®VERTICAL¡¯
% Output: cumulativeEnergyMap--2D matrix of datatype double

% Initialize a new matrix
M = zeros(size(energyImg));
[rows, columns] = size(energyImg);
% HORIZONTAL or VERTICAL
if strcmp(seamDirection,'VERTICAL')
    M(1,:) = energyImg(1,:);
    for i = 2:rows
        for j = 1:columns
            if j == 1
                Mt = [M(i-1,j) M(i-1,j+1)];
            elseif j == columns
                Mt = [M(i-1,j-1) M(i-1,j)];
            else
                Mt = [M(i-1,j-1) M(i-1,j) M(i-1,j+1)];
            end
            M(i,j) = energyImg(i,j) + min(Mt);
        end
    end
elseif strcmp(seamDirection,'HORIZONTAL')
    M(:,1) = energyImg(:,1);
    for j = 2:columns
        for i = 1:rows
            if i == 1
                Mt = [M(i,j-1),M(i+1,j-1)];
            elseif i == rows
                Mt = [M(i,j-1),M(i-1,j-1)];
            else
                Mt = [M(i-1,j-1),M(i,j-1),M(i+1,j-1)];
            end
            M(i,j) = energyImg(i,j) + min(Mt);
        end
    end
else
    fprintf('Error: Invalid seamDirection');
end
cumulativeEnergyMap = M;
end


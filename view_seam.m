function view_seam(im,seam,seamDirection)
% display the selected type of seam on top of an image
% Input: im: an MxNx3 matrix of datatype uint8
%       seam:output of find_vertical_seam or find_horizontal_seam
%        seamDirection:¡®HORIZONTAL¡¯ or ¡®VERTICAL¡¯
%The function should display the input image and plot the seam on top of
%it.
%Initialize 
M = im;
[rows,columns,~] = size(im);
if strcmp(seamDirection,'VERTICAL')
    for i = 1:rows
        M(i,seam(i),:) = [255,0,0];
    end
elseif strcmp(seamDirection,'HORIZONTAL')
    for j = 1:columns
        M(seam(j),j,:) = [255,0,0];
    end
else
    fprintf('Invalid seamDirection');
end
imshow(M);
end


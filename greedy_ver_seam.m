% Use Greedy solution to find the seam
% Input the result im from function energ_im
% Output the vector containing the index of selected pixel for each rows

function greedy_vertical_seam = greedy_ver_seam(im)
    [num_rows, num_col] = size(im);
    v = zeros(1,num_rows);
    [~,ind] = min(im(1,:)); 
    v(1,1) = ind;
    
    for i = 2 : num_rows
        [~,j] = min(im(1,i - 1));
        if j == 1
            [~,ind] = min([im(i,j), im(i,j+1)]);
            
            v(1,i) = ind + j - 1;
        elseif j == num_col
            [~,ind] = min([im(i,j - 1), im(i,j)]);
            v(1,i) = ind + j - 2;
        else
            [~,ind] = min([im(i,j - 1), im(i,j), im(i,j + 1)]);
            v(1,i) = ind + j - 2;
        end
        
    end
    
    
    greedy_vertical_seam = v;
end
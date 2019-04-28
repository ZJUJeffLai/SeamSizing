function greedy_horizontal_seam = greedy_hor_seam(im)
    im = im';
    greedy_horizontal_seam = greedy_ver_seam(im);
    
end
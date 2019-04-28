% test
RGB = imread('coins.jpeg');
imshow(RGB);
gra = rgb2gray(RGB);
imshow(gra);
pause;
energyImg = energy_img(RGB);
imshow(energyImg);
pause;

VERT = cumulative_min_energy_map(energyImg, 'VERTICAL');
imshow(VERT);
pause;

HORI = cumulative_min_energy_map(energyImg, 'HORIZONTAL');
imshow(HORI);
pause


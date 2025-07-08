% Load image
A = imread('Project2.jpg');
figure, imshow(A);
title('Original Image');

% Invert image (negative)
B = 255 - A;  % works for grayscale or RGB images
figure, imshow(B);
title('Image Negative');

% Increase brightness with clipping
C = im2double(A) * 1.3;    % convert to double for multiplication
C(C > 1) = 1;              % clip values to max 1 (equivalent to 255)
C = im2uint8(C);           % convert back to uint8
figure, imshow(C);
title('Brightness Increased');

% Find maximum pixel value and its position
[MAX, idx] = max(A(:));
[i_max, j_max] = ind2sub(size(A), idx);
fprintf('Maximum value: %d at position (%d,%d)\n', MAX, i_max, j_max);

% Apply median filter (3x3 neighborhood)
E = medfilt2(rgb2gray(A)); % convert to grayscale first if RGB
figure, imshow(E);
title('Median Filtered Image (3x3)');

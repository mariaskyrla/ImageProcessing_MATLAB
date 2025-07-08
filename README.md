# ImageProcessing_MATLAB

This project demonstrates fundamental image processing operations using MATLAB.  
It includes examples of image inversion, brightness adjustment, pixel analysis, and noise reduction through filtering.

## 🔧 Features

- Load and display an image
- Create the image negative (inversion)
- Increase brightness with saturation handling
- Detect the maximum pixel value and its location
- Apply a median filter for noise reduction

---

## 📷 Sample Code (Summary)

```matlab
% Load image
A = imread('Project2.jpg');
figure, imshow(A); title('Original Image');

% Invert image (negative)
B = 255 - A;
figure, imshow(B); title('Image Negative');

% Brightness increase with clipping
C = im2double(A) * 1.3;
C(C > 1) = 1;
C = im2uint8(C);
figure, imshow(C); title('Brightness Increased');

% Maximum pixel value and position
[MAX, idx] = max(A(:));
[i_max, j_max] = ind2sub(size(A), idx);
fprintf('Maximum value: %d at position (%d,%d)\n', MAX, i_max, j_max);

% Median filtering (3x3 neighborhood)
E = medfilt2(rgb2gray(A));
figure, imshow(E); title('Median Filtered Image (3x3)');

% Load the image
A = imread('Project2.jpg');

% Display the first channel (assuming grayscale or RGB, showing the first channel)
figure, imshow(A(:,:,1));
title('Original Image (First Channel)');

% Create negative image (invert pixel values)
B = zeros(size(A), 'uint8');
for i = 1:size(A,1)
    for j = 1:size(A,2)
        B(i,j) = 255 - A(i,j);
    end
end
figure, imshow(B(:,:,1));
title('Negative Image');

% Increase brightness by 30% with clipping at 255
C = zeros(size(A), 'uint8');
for i = 1:size(A,1)
    for j = 1:size(A,2)
        val = A(i,j) * 1.3;
        if val > 255
            val = 255;
        end
        C(i,j) = floor(val);
    end
end
figure, imshow(C(:,:,1));
title('Brightness Increased by 30%');

% Find the maximum pixel value and display its coordinates
MAX = 0;
for i = 1:size(A,1)
    for j = 1:size(A,2)
        if A(i,j) > MAX
            MAX = A(i,j);
        end
    end
end

% Display all pixel coordinates where the max value occurs
disp('Coordinates of maximum pixel value:');
for i = 1:size(A,1)
    for j = 1:size(A,2)
        if A(i,j) == MAX
            fprintf('(%d, %d)\n', i, j);
        end
    end
end

% Apply median filtering using a 3x3 neighborhood
E = zeros(size(A), 'uint8');
for i = 1:size(A,1)
    for j = 1:size(A,2)
        count = 1;
        S = zeros(1,8); % 8 neighbors
        for k = i-1:i+1
            for l = j-1:j+1
                % Check boundaries and exclude the center pixel itself
                if (k >= 1) && (l >= 1) && (k <= size(A,1)) && (l <= size(A,2)) && ~(k == i && l == j)
                    S(count) = A(k,l);
                    count = count + 1;
                end
            end
        end
        E(i,j) = median(S);
    end
end
figure, imshow(E(:,:,1));
title('Median Filtered Image');

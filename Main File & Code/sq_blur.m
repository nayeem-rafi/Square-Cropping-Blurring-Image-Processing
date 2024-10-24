%% blurwithcropping

clc; clear all; close all;

cat = imread('cat.jpg');
[crop, window] = imcrop(cat); % Allow the user to crop the image
hsize = 21; % Size of the Gaussian kernel
sigma = 10; % Standard deviation for the Gaussian kernel
h = fspecial('gaussian', hsize, sigma);

% Initialize a blurred image with the same size as the original
im_blur = zeros(size(cat), 'uint8');

% Apply the Gaussian filter to each color channel
for channel = 1:size(cat, 3) % Loop through each color channel
    im_blur(:, :, channel) = filter2(h, cat(:, :, channel)); % Filter each channel
end

xs = round(window(2)); 
xe = round(window(2)) + round(window(4));
ys = round(window(1)); 
ye = round(window(1)) + round(window(3));

cat(xs:xe, ys:ye, :) = im_blur(xs:xe, ys:ye, :);
imshow(cat);

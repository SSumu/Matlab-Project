clc
clear all
close all
% Load an image
rgbImage = imread('idFour.jpeg');
%J = imresize(rgbImage, [300 200]);
grayImage = rgb2gray(rgbImage);
% Binarize the image.
binaryImage = grayImage > 130;
% Remove small objects.
binaryImage = bwareaopen(binaryImage, 5000);
figure(1)
imshow(binaryImage);
title('Cleaned Binary Image');
% Use the 'CharacterSet' parameter to constrain OCR
results = ocr(binaryImage, 'CharacterSet', '0123456789', 'TextLayout','Word');
results.Text;
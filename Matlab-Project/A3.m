I = imread('idThreeP2.jpg');
%plateImage = rgb2gray(I);
eccentricityThreshold = 0.995;
boxes = helperDetectText(I,'TextPolarity','DarkTextOnLight',...
    'MaxEccentricity', eccentricityThreshold, 'SizeRange', [100,4000]);
figure; 
imshow(I); 
title('NIC'); 
hold on
for i=1:size(boxes,1)
    rectangle('Position', boxes(i,:),'EdgeColor','r')
end
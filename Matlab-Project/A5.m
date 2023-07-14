businessCard = imread('idThreeP2.jpg');

ocrResults   = ocr(businessCard);
bboxes = locateText(ocrResults, '9*v','UseRegexp', true);
img    = insertShape(businessCard, 'FilledRectangle', bboxes);
figure; 
imshow(img);
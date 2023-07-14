%p = imread('idOne.jpeg');
%J = imresize(p, [300 200]);
%I = rgb2gray(J);
%ocrResults = ocr(I)
%recognizedText = ocrResults.Text
%bboxes = locateText(ocrResults, '*v','UseRegexp', true);
%img    = insertShape(p, 'FilledRectangle', bboxes);
figure; 
%imshow(img);
%figure
%imshow(I)


I = imread('idOne.jpeg');
roi = [360 118 384 560];
ocrResults = ocr(I, roi);
Iocr = insertText(I,roi(1:2),ocrResults.Text,'AnchorPoint',...
    'RightTop','FontSize',16);
figure; 
imshow(Iocr);


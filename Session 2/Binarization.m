% Providor and Course Instructor: Prof. Amindavar at https://aut.ac.ir/cv/2200/%D8%AD%D9%85%DB%8C%D8%AF%D8%B1%D8%B6%D8%A7%20%D8%A7%D9%85%DB%8C%D9%86%20%D8%AF%D8%A7%D9%88%D8%B1
clc;clear;
%Binarization
I = imread('printedtext.png');
figure
imshow(I)
title('Original Image')
pause
%%%%%%%%%%%%%%%%
BW = imbinarize(I,'adaptive','ForegroundPolarity','dark','Sensitivity',0.3);
%Display the binary version of the image.
figure
imshow(BW)
I % showing the digitized image :)
title('Binary Version of Image')
figure(gcf)
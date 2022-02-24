clc ;
clear;
close;
img= imread ('D:\back2.jpeg');
img=rgb2gray(img);
[count,cells ]= imhist (img);                          // compute histogram
subplot(2,2,1);
title('Original image');
imshow(img); 
subplot(2,2,2);
plot2d3 ('gnn' , cells , count )
title('Histogram plot for original image');
Iheq = imhistequal(img);
[count,cells ]= imhist (Iheq);                      // compute histogram equalization
subplot(2,2,3);
title('Histogram Equalized image');
imshow(Iheq); 
subplot(2,2,4);
plot2d3 ('gnn' , cells , count )

# Histogram-Equalization
Histogram equalization is used to enhance contrast. It is not necessary that contrast will always be increase in this. There may be some cases were histogram equalization can be worse. In that cases the contrast is decreased.

## INPUT:

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


## OUTPUT:

![image](https://user-images.githubusercontent.com/70971734/155469866-56d8b9ff-f89a-4b90-a0e6-9a96d090ceed.png)


![image](https://user-images.githubusercontent.com/70971734/155469890-d7e9d820-9e36-4d9a-8d95-efe058fcbf5f.png)

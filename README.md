# Histogram-Equalization
Histogram equalization is used to enhance contrast. It is not necessary that contrast will always be increase in this. There may be some cases were histogram equalization can be worse. In that cases the contrast is decreased.
<hr>
## INPUT:

clc ;<br>
clear;<br>
close;<br>
img= imread ('D:\back2.jpeg');<br>
img=rgb2gray(img);<br>
[count,cells ]= imhist (img);       <br>                   // compute histogram
subplot(2,2,1);<br>
title('Original image');<br>
imshow(img); <br>
subplot(2,2,2);<br>
plot2d3 ('gnn' , cells , count )<br>
title('Histogram plot for original image');<br>
Iheq = imhistequal(img);<br>
[count,cells ]= imhist (Iheq);         <br>             // compute histogram equalization
subplot(2,2,3);<br>
title('Histogram Equalized image');<br>
imshow(Iheq); <br>
subplot(2,2,4);<br>
plot2d3 ('gnn' , cells , count )<br>
<hr>

## OUTPUT:

![image](https://user-images.githubusercontent.com/70971734/155469866-56d8b9ff-f89a-4b90-a0e6-9a96d090ceed.png)

<br>

![image](https://user-images.githubusercontent.com/70971734/155469890-d7e9d820-9e36-4d9a-8d95-efe058fcbf5f.png)


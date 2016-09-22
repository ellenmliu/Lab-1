%taking the bottom right corner of the grayscale image
A = imread('s.jpg');
A = imresize(A, [100 100]);
imshow(A(end/2:end, end/2:end)); % shows the bottom half of the right side
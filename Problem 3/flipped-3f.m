%displaying the mirrored version of the grayscale image over the y axis.
A = imread('s.jpg');
A = imresize(A, [100 100]);
imshow(fliplr(A)); %flips the array from left to right
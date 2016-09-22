%taking a grayscale image and putting it in a 10,000 dimensional vector
%then sorting by intensity
A = imread('s.jpg');
A = imresize(A, [100 100]); %resizes the image to 100 x 100 matrix
x = reshape(A, 10000, 1); %put into a %10000 dimensional vector
x = sort(x); %sort the elements
plot(x);
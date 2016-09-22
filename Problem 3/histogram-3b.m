%taking a grayscale image and plotting a histogram
A = imread('s.jpg');
A = imresize(A, [100 100]);
histogram(A, 32); %displays the histogram
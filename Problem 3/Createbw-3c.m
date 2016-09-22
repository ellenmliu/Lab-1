%taking grayscale image and setting the threshold t to 150(random number I
%chose) and having all the intensity greater than the threshold to be set
%to 1 and all the one less than t set to 0.
A = imread('s.jpg');
A = imresize(A, [100 100]);
t = 150; %threshold
B = zeros(100, 100); %matrix of all 0's
for r = 1:100
   for c = 1:100
    if A(r, c) > t %goes through each element to find if the intensity is > t
        B(r, c) = 1; %sets to 1 if > t
    end
   end
end
subplot(1, 2, 1);
imshow(A);
subplot(1,2,2);
imshow(B);
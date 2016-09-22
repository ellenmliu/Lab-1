%finding the mean intensity of the grayscale image and subtracting the
%intensity with the mean. Any of the negative intensity are set to 0 and
%display the new image.
A = imread('s.jpg');
A = imresize(A, [100 100]);
a = mean(A); %average of the each column
b = mean(a); %average of the all the column
B = zeros(100,100); %matrix of all 0's
for r = 1:100
   for c = 1:100
    temp = A(r, c) - b; %difference of original and average intensity
    if temp < 0 %if negative intensity
        temp = 0; %set to 0
    end
    B(r, c) = temp; 
   end
end
imshow(B);
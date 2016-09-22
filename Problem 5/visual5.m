a = train8'; %transpose the train matrix
b = a(:,1); %take the first row
c = reshape(b, [28 28]); %reshape the row into 28x28 matrix
imshow(c'); %show the image
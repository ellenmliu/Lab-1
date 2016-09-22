a = train3'; %transpose the train matrix
J = 0.0;
for i = 1:length(a)
    b = a(:,i); %take the current row
    c = reshape(b, [28 28]); %reshape the row into 28x28 matrix
    I = double(c); %cast to double before arithmetic operations are performed
    J = imlincomb(1, I, 1, J); %adding all the values together in their respective indices
end

J = J/(length(a)); %taking the average
J = uint8(J)'; %casting back to uint
figure, imshow(J);
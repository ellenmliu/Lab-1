a = train3'; %transpose the train matrix
x = train8';

J = 0.0;
K= 0.0;
for i = 1:length(a)
    b = a(:,i); %take the current row
    c = reshape(b, [28 28]); %reshape the row into 28x28 matrix
    I = double(c); %cast to double before arithmetic operations are performed
    J = imlincomb(1, I, 1, J); %adding all the values together in their respective indices
end
for i = 1:length(x)
    y = x(:,i); %take the current row
    z = reshape(y, [28 28]); %reshape the row into 28x28 matrix
    G = double(z); %cast to double before arithmetic operations are performed
    K = imlincomb(1, G, 1, K); %adding all the values together in their respective indices
end

J = J/(length(a)); %taking the average
J = uint8(J)'; %casting back to uint
figure, imshow(J);

K = K/(length(x)); %taking the average
K = uint8(K)'; %casting back to uint
figure, imshow(K);

A = test3'; %finding error for test 3

ssdnot3 = 0;
for i = 1:length(A)
    B = A(:,i);
    C = reshape(B, [28 28])'; %getting each individual image
    
    C = double(C); %convert to double
    J = double(J);
    K = double(K);
    
    total3 = (C - J); %getting the ssd of both 3 and 8
    total8 = (C - K);
    total3 = total3.^2;
    total8 = total8.^2;
    diff3 = sum(total3);
    diff3 = sum(diff3);
    diff8 = sum(total8);
    diff8 = sum(diff8);
    
    if(diff3 > diff8) %if classified as the opposite number
        ssdnot3 = ssdnot3 + 1; %increment error label

    end
    
end

ssd3error = ssdnot3/length(A); %percent error

X = test8'; %finding error for test 8

ssdnot8 = 0;
for i = 1:length(X)
    B = X(:,i);
    C = reshape(B, [28 28])'; %getting each individual image
    
    C = double(C); %convert to double
    J = double(J);
    K = double(K);
    
    total3 = (C - J); %getting the ssd of both 3 and 8
    total8 = (C - K);
    total3 = total3.^2;
    total8 = total8.^2;
    diff3 = sum(total3);
    diff3 = sum(diff3);
    diff8 = sum(total8);
    diff8 = sum(diff8);
    
    if(diff3 < diff8) %if classified as the opposite number
        ssdnot8 = ssdnot8 + 1; %increment error label
    end
    
end

ssd8error = ssdnot8/length(X);

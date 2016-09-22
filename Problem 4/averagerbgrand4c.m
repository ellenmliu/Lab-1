src = dir('C:\Users\ellenmliu\Documents\MATLAB\Lab 1\set1\*.jpg');
J = 0.0;
for i = 1 : length(src)
    filename = ['C:\Users\ellenmliu\Documents\MATLAB\Lab 1\set1\' src(i).name];
    A = imread(filename);
    B = (imresize(A, [200 300])); %resize to all the same size
    C = flipornot3h(B); %perform a random flip
    D = double(C);  %cast to double before arithmetic operations are performed
    J = imlincomb(1, D, 1, J); %adding all the values together in their respective indices
end

J = J/(length(src)); %taking the average
J = uint8(J); %casting back to uint
figure, imshow(J);
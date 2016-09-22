A = imread('s.jpg');
A = imresize(A, [100 100]);
a = min(A); %find the min of the column
x = min(a); %find min of all the mins
[r, c] = find(A == x, 1); % find the first value where it occurs

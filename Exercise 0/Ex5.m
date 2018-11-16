A = [1 2 3 6 8 2; 1 3 4 11 14 4];
B = [11 12 13 1 3 5];
data = ~ismember(A , B);
B = A(data);
min_el = min(B(:))
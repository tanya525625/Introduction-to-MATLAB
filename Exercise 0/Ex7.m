n = 7;
A = 1:7
A = repmat (A, n, 1)
B = rot90(A, -2)
B = B' 
B = tril (B)
eig(B)
B(n-1,:) = 0
det(B)

n = 7;
A = 1:n;
A = A.'; 
A = A*ones(1, n)
B = 1:n;
B = B.';
B = repmat(B, 1, n)
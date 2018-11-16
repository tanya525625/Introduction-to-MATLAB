A = [2 4 5 6 2 1 3 2 1 1];
min_m = min( A(:) );
col_min = find( A == min(A));
k = (A == min(A));
n = length(A);
k = sum(k);
A = zeros(1, n);
A(col_min) = 1:k



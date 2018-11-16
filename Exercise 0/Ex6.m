n = 5;
A = rand (1, n)
a = A(1, 1:n/2)
b = A(1, n/2+1: n)
isequal (a,b)
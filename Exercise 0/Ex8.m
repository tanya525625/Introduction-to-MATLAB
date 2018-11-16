x = 20;
syms k n;
n = 5;
symsum ((-1)^(n-k)*nchoosek(2*n, n+k)/(x-k), -n, n)
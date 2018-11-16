n = 5;
m = 7;
A = rand(5, 7);
A = round(100*A)
row_prime = find (isprime(A)==true);
data_prime = A(row_prime);
max_prime = max(data_prime(:))


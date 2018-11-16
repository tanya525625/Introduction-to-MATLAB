function xx=chebyshevNodes(x, a, b)
N = length(x);
xx = zeros(N);
for k = 1:N
    xx(k) = 1/2*(a+b)+1/2*(b-a)*cos((2*k-1)/(2*N)*pi);
end


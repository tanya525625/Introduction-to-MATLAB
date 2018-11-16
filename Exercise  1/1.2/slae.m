function yy=slae(x,y)
N=length(x);
yy = zeros(N);
format long;
A = vander(x);
A = A(:, end:-1:1);
p = y';
c = linsolve(A,p);
for i = 1:N
    yy(i) = 0;
    for j = 1:N
        yy(i) = yy(i) + c(j)*x(i)^(j-1);
    end
    if abs(yy(i)) < 1e-12
        yy(i) = 0;
    end
end
yy = yy(:, 1);
yy = yy';
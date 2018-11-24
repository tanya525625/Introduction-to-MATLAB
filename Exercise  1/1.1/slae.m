function yy=slae(x,y, xx)
N=length(x);
yy = zeros(size(xx));
format long;
A = vander(x);
A = A(:, end:-1:1);
p = y';
c = linsolve(A,p)
c = c';
c = c(end:-1:1);
yy = polyval(c,xx);

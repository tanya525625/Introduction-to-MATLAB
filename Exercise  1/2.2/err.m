function r = err(x, x0, xn, f)
N = length(x);
a = zeros(1, N);
for i = 1:N
    a(i) = x0 + (rand(1) * (xn-x0));
end
y = sin(x);
yL = sin(a);
newY = f(a, yL);
r = errDif(y, newY);
%dif = abs(y - newY);
%r = max(dif(:));


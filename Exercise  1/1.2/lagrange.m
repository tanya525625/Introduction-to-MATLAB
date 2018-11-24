function yy = lagrange(x,y,xx)
N = length(x);
yy = zeros(size(xx));
for i = 1:N
    t = ones(size(xx));
    for j = [1:i-1, i+1:N]
        if (x(i)-x(j) == 0) 
            t = t.*(xx-x(j)/N);
        else
            t=t.*(xx-x(j))/(x(i)-x(j));
        end
    end
    yy = yy + y(i)*t;
end
function yy=lagrange(x,y)
N=length(x);
yy=zeros(size(x));
for i=1:N
    t=ones(size(x));
    for j=[1:i-1, i+1:N]
        if (x(i)-x(j) == 0) 
            t = t.*(x-x(j)/N);
        else
            t=t.*(x-x(j))/(x(i)-x(j));
        end
    end
    yy = yy + y(i)*t;
end
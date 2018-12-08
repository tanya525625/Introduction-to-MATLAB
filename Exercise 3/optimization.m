function res = optimization(eps, n) 
    a = 1;
    b = 2;
    x_a = 2; 
    x_b = 2.5; 
       
    xx = linspace(x_a, x_b, n);    
    f = @(x)compute_integral(a, b, x);
    lf = f(xx);    
    while 1
        grad = gradient_(f, xx);
        y = -grad; 
        a = get_a(f, y, xx);
        xx = xx + a .* y;        
        cf = f(xx);
        if abs(cf - lf) < eps
            break
        end
        lf = cf; 
    end
    res = f(xx); 
end
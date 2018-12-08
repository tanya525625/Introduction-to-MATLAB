function a = get_a(f, y, x)
    m = 0; 
    M = 1; 
    n = (M - m) / 1e-2;
    a_v  = linspace(m, M, n);
    min_v = get_g(f, a_v(1), y, x);
    a = a_v(1);
    for i = 2:length(a_v)
        val = get_g(f, a_v(i), y, x);
        if val < min_v
            min_v = val;
            a = a_v(i);
        end        
    end   
end





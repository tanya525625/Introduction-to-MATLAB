function f = get_F(func_x)
    diff_f = get_diff(func_x);
    f = @(t) t .* (diff_f(t)).^2 + ((func_x(t)).^2) / t; 
end
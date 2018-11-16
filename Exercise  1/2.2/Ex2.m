n = input('Введите количество узлов интерполирования ')
a = -1;
b = 1;
x = linspace(a, b, n);
xx = chebyshevNodes(x, a, b);
y = zeros(1, n);
yy = zeros(1, n);
% y = 1/(1+12*x.*x)
for i = 1:n
    y(i) = 1/(1+12*x(i)*x(i));
    yy(i) = 1/(1+12*xx(i)*xx(i));
end
yL=lagrange(x,y);
yLCh=lagrange(xx,yy);
yS = slae(x, y);
figure('Color','w');
grid on
hold on
ezplot ('1/(1+12*x*x)', [-1 1])
plot(x,yL,'r', 'Linewidth', 2)
plot(xx,yLCh,'g')
plot(x, yS, 'y')
legend('1/(1+12x^2)','Интерполяция полиномом Лагранжа', 'Интерполяция через узлы Чебышёва', 'Интерполяция через СЛАУ')
f = @lagrange;
errL = err(x, a, b, f)
f = @slae
errSLAE = err(x, a, b, f)
errCh = errDif(y, yLCh)



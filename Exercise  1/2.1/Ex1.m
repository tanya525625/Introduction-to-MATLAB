n = input('Введите количество узлов интерполирования ')
a = -5*pi;
b = 5*pi;
x = linspace(a, b, n);
xx = chebyshevNodes(x, -5*pi, 5*pi);
g = inline('sin(x)');
y = g(x);
yy = g(xx);
yL=lagrange(x,y);
yLCh=lagrange(xx,yy);
yS = slae(x, y);
figure('Color','w');
fplot(@sin,[-5*pi 5*pi])
grid on
hold on
plot(x,yL,'r', 'Linewidth', 2)
plot(xx,yLCh,'g')
plot(x, yS, 'y')
legend('sin(x)','Интерполяция полиномом Лагранжа', 'Интерполяция через узлы Чебышёва', 'Интерполяция через СЛАУ')
f = @lagrange;
errL = err(x, a, b, f)
f = @slae
errSLAE = err(x, a, b, f)
errCh = errDif(y, yLCh)



n = input('Введите количество узлов интерполирования ')
a = -5*pi;
b = 5*pi;
nn = 1000;

x = linspace(a, b, n);
y = func(x);
xx = linspace(a, b, nn);
yy = func(xx);

xCh = chebyshevNodes(x, a, b);
yCh = func(xCh);

yL=lagrange(x,y, xx);
yLCh=lagrange(xCh,yCh, xx);

yS = slae(x, y, xx);

figure('Color','w');
fplot(@sin,[a b])
grid on
hold on
plot(xx,yL,'r', 'Linewidth', 2)
plot(xx,yLCh,'g')
plot(xx, yS, 'y')
legend('1/(1+12x^2)','Интерполяция полиномом Лагранжа', 'Интерполяция через узлы Чебышёва', 'Интерполяция через СЛАУ')

figure('Color','w');
grid on
hold on
plot(xx, yL - yy, 'c', 'linewidth', 2)
plot(xx, yLCh - yy, 'm')
plot(xx, yS - yy, 'y')
legend('Lagr','LagrCheb','SLAE');




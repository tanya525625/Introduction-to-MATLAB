[FileName,PathName,FilterIndex] = uigetfile({'*.mat','MAT-files (*.mat)'});
S = load([PathName,FileName]);
grid on
plot(S.V, S.b1f, '*r');
vi = min(S.V):0.1:max(S.V);
N = 1;
coeff1 = polyfit(S.V, S.b1f, N);
newY1 = 0;
for k=0:N
    newY1 = newY1 + coeff1(N-k+1) * vi.^k;
end
hold on; 
plot(vi, newY1, 'm');
err1 = max(abs(appFunc(S.V, coeff1))./abs(S.b1f))*100

plot(S.V, S.b2f, '*g');
N = 2; 
coeff2 = polyfit(S.V, S.b2f, N);
newY2 = 0;
for k=0:N
    newY2 = newY2 + coeff2(N-k+1) * vi.^k;
end
hold on; 
plot(vi, newY2, 'y', 'Linewidth', 3);
err2 = max(abs(S.b2f-appFunc(S.V, coeff2))./abs(S.b2f))*100

k = length(vi); 
C = 0; 
yLn = log(S.b2f); 
xLn = log(S.V); 
N = 1;
coeff3 = polyfit(xLn, yLn, N); 
alpha = coeff3(1); 
b = coeff3(2); 
y = zeros(1, k); 
for i = 1:k 
    y(i) = appFuncExp(vi(i), coeff3); 
end 
plot(vi, y, 'b'); 
legend("Original b1f", "Lin b1f", "Original b2f", "Sqr b2f", "Power b2f"); 

err3 = max(abs(S.b2f-appFuncExp(S.V, coeff3))./abs(S.b2f))*100

function [ret] = appFuncExp(x, coef) 
    ret = exp(coef(2))*x.^(coef(1)); 
end

function [ret] = appFunc(x, coef) 
    L = length(coef); 
    ret = 0; 
    for i = 1:L 
        ret = ret + (x.^(L-i))*coef(i); 
    end 
end



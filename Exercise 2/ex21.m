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
err1 = max(abs(b1f-(coeff1(1)*(S.V)+coeff1(2)))./abs(b1f))*100

plot(S.V, S.b2f, '*g');
N = 2; 
coeff2 = polyfit(S.V, S.b2f, N);
newY2 = 0;
for k=0:N
    newY2 = newY2 + coeff2(N-k+1) * vi.^k;
end
hold on; 
plot(vi, newY2, 'c');
err2 = max(abs(b2f-(coeff2(1)*(S.V).^2+coeff2(2)*(S.V)+coeff2(3)))./abs(b2f))*100



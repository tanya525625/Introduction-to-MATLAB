[FileName,PathName,FilterIndex] = uigetfile({'*.mat','MAT-files (*.mat)'});
S = load([PathName,FileName]);
grid on
plot(S.tt, S.xx, '*r');
ti = min(S.tt):0.1:max(S.tt);
N = 2; 
coeff1 = polyfit(S.tt, S.xx, N);
newY1 = 0;























for k=0:N
    newY1 = newY1 + coeff1(N-k+1) * ti.^k;
end
hold on; 
plot(ti, newY1, 'c');
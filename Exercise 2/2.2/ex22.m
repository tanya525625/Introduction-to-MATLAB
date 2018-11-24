[FileName,PathName,FilterIndex] = uigetfile({'*.mat','MAT-files (*.mat)'});
S = load([PathName,FileName]);
c0 = [0,0, 0, 0];
c = fsolve(@myFun,c0);
step = 0.01; 
nodes = min(S.tt):step:max(S.tt); 
newXX = zeros(1, length(nodes)); 
newYY = zeros(1, length(nodes));

for i=1:length(nodes) 
    newXX(i) = x(nodes(i), c); 
end 

for i=1:length(nodes) 
    newYY(i) = y(nodes(i), c); 
end 

plot(newXX, newYY, 'm');



















function r = errDif(y, newY)
dif = abs(y - newY);
r = max(dif(:));
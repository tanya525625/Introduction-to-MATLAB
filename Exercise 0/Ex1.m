A = rand(3,4);
B = rand(4,3);
C = B * A
C = C(1:3, 1:3)
det(C)
poly(C)
eig(C)

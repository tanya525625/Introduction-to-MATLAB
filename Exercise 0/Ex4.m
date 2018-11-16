A = [1 2 3; 4 5 6]
B = [11 12; -2 -10]
a = A(:)
b = B(:)
b = b'
s = a+b
C = sin(s)
maxi = max(C(:))
E = [1 1 1 1; 1 -i -1 i; 1 -1 1 -1; 1 i -1 -i]
g = [0 1 2 3]

%TDF
G = g*E

%iTDF

g2 = G*invE/4
g3 = G*conj(E)

g4 = fft(g)



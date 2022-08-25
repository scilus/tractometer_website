 % Exemple 1 SF
% f(x) = 3/2 + sum 3(1 - cos(n pi))/ (n pi) sin( n pi x / 5 )

x = -20:0.1:20;

f = 3/2;
for n = 1:1000
    f = f + 3*(1 - cos( n*pi ))/ (n*pi) * sin( n*pi*x / 5);
end

plot(x, f,'linewidth',2);



 












% Exemple 2 SF
% f(x) = 4pi^2/3 + sum[ 4/n^2 cos(nx) - 4pi/n sin(nx)]

x = -6*pi:0.01:6*pi-0.01;
f = 4*pi^2/3;
for n = 1:100
    f = f + 4/(n*n)*cos(n*x) - 4*pi/n*sin(n*x);
end

plot(x, f,'linewidth',2);



 












    


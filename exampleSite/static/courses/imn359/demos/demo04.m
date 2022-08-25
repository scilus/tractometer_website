


% Exemple 1 SF complexe
% f(t) = -2A/pi sum (1 / (4n^2 -1) e^(i2pi*nt))
A = 1;
t = -3:0.01:3;
f1 = abs(A*sin(pi*t)); % petit truc pour rendre sin periodique de periode T

f = 0;
for n = -5:5
    f = f + -2*A/pi*(1/ (4*n*n - 1))*exp(i*2*pi*n*t);
end

hold on
plot(t, f,'linewidth',2);
plot(t, f1,'r');
hold off











% Exemple 2 SF complexe
% f(t) = Ad/T sum( sinc( w*n*d / 2) * exp(i*w*n*t);
A = 1;
T = 20; % (2*d)
d = 10;
w = 2*pi/T;

t = -35:0.1:35;

f = 0;

for n = -500:500
    arg = w*n*d / 2;
    
    if( arg ~= 0 )
        f = f + A*d/T * sin( arg ) ./ arg * exp(i*w*n*t);
    else
        f = f + A*d/T * 1 * exp(i*w*n*t);
    end
end
plot(t, f,'linewidth',2);

% Spectre d'amplitude
% f(w) = |c_n| for n valeur de w

w = -160*pi:10:160*pi;
A = 1;
T = 1/2;
d = 1/20;
arg = w*d/2;
f = abs(A*d/T* sin( arg ) ./ arg);

plot(w, f, '.-', 'linewidth', 2);







N = 100;

x = -pi:0.01:pi

f = 0;
E = pi*pi/3;

for n = 1:N
    f = f + 2*(-1)^(n+1) / n * sin( n*x);
    E = E - 2*( cos(n*pi)*cos(n*pi) ) / (n*n);
end

hold on
plot(x, x, 'r', 'linewidth', 2);
plot(x, f, 'b');
legend({'f(x) = x',['SF with n = ' num2str(N)]});
title(['Nombre d harmoniques n = ' num2str(N) ', Erreur quadratique En = ' num2str(E)]);
hold off



%%% Gibbs ringing

x = -20:0.1:20;

f = 3/2;
for n = 1:5
    f = f + 3*(1 - cos( n*pi ))/ (n*pi) * sin( n*pi*x / 5);
end

plot(x, f,'linewidth',2);


% Exemple TF de exp(- alpha * t);
% Avec ses spectres d'amplitudes et de phases
t = 0:1:100;

g = exp(-0.05*t);

subplot(3,2,1), plot(t,g, '.-', 'linewidth', 2);
xlabel(' t ');
ylabel(' g(t)  ');
title('g(t) = exp(-0.05t)');

f = -0.5:0.01:0.5;
G = 1 ./ sqrt( 0.05^2 + 4.*pi^2.*f.*f ) .* exp(i*atan( -2*pi*f / 0.05));

subplot(3,2,2), plot(f, real(G), '.-', 'linewidth', 2);
xlabel(' f ');
ylabel(' Real(G(f))  ');
title('Real part of G(f) = TF[g(t)]');

subplot(3,2,3), plot(f, imag(G), '.-', 'linewidth', 2);
xlabel(' f ');
ylabel(' Im(G(f))  ');
title(' Imaginery part of G(f) = TF[g(t)]');

subplot(3,2,4), plot(f, abs(G), '.-', 'linewidth', 2);
xlabel(' f ');
ylabel(' abs(G(f))  ');
title(' Modulus of G(f) = TF[g(t)]');


subplot(3,2,5), plot(f, abs(G), '.-', 'linewidth', 2);
xlabel(' f ');
ylabel(' Spectre d amplitude ');
title(' Spectre d amplitute ');


subplot(3,2,6), plot(f, atan( imag(G) ./ real(G)), '.-', 'linewidth', 2);
xlabel(' f ');
ylabel(' Spectre de phase ');
title(' Spectre de phase en radian');









load lena.mat;
I = lena;


% Accelerer la convolution
C = conv2(lena, lena, 'same');

% Beaucoup plus rapide d'utiliser le thm de convolution
CC = fftshift( ifft2( fft2(lena) .* fft2(lena)));


% Convolution
h = zeros(512,512);
h(246:266, 246:266) = ones(21,21);
imagesc(h)
filtre = h;


C = conv2(lena, filtre, 'same');
imagesc(C)

% Beaucoup plus rapide d'utiliser le thm de convolution
CC = fftshift( ifft2( fft2(lena) .* fft2(filtre)));
imagesc( CC )


% moyenne
h = [1/2 1/2]
Moy = conv2(lena, h);
imagesc(Moy)

h = [1/5 1/5 1/5 1/5 1/5]
Moy = conv2(lena, h);
imagesc(Moy)

% derivee
h = [-1/2 0 1/2];
I_x = conv2( lena, h );
imagesc(I_x)





% Plancherel
% Energy dans Lena
energy = sum( abs( I(:).^2 ) )

IF = fft2(I);

energy2 = sum( abs( IF(:).^2 ) )

test = energy2 / length(I)^2 




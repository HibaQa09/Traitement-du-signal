clear 
close all 
clc


fe=10000; %la fréquence d'echantillonnage
Te=1/fe; % la période d'echantillonnage
N=5000; % nbr d'echantillons


t=0:Te:(N-1)*Te; % le pas c'est une période d'échantillonnage

x=1.2*cos(2*pi*440*t+1.2)+3*cos(2*pi*550*t)+0.6*cos(2*pi*2500*t);

%{
plot(t,x)
grid on
title('signal X')
xlabel('t')
ylabel('X(t)')
%}
% Representation fréquentielle 

%%fshift = 0: fe/N: (N-1)*(fe/N); % le pas de discrétisation est fe/N 
fshift2 = (-N/2:(N/2)-1)*(fe/N); 
% est ça génère aussi 5000 echantillons

 y=fft(x)
 %{
 %plot(fshift,abs(y)); % la fct abs est pour calculer les amplitudes
 plot(fshift2,fftshift(abs(y))); % la fct abs est pour calculer les amplitudes
 grid on
 title('représentation du spectre d amplitude de la TFD du signal X')
 xlabel('fshift')
 ylabel('amplitudes')
%}
%%


 %{
% Signal bruité 

xbruit1 =  x + 2*randn(size(x)); 

ybruit1 = abs(fft(xbruit1));

xbruit2 =  x + 50*randn(size(x));

ybruit2 = abs(fft(xbruit2));

%  plot(fshift,fftshift(ybruit),'G');
subplot(3,2,1)
plot(t,x,'.')
title('representation temporelle du signal X non bruité');
subplot(3,2,2)
plot(fshift,y);
title('representation frequentielle du signal X non bruité');
subplot(3,2,3)
plot(t,2*randn(size(x)));
title('representation temporelle du signal X bruité');
subplot(3,2,4)
plot(fshift,fftshift(ybruit1));
title('representation frequentielle du signal X bruité');
subplot(3,2,5)
plot(t,50*randn(size(x)));
title('representation temporelle du signal X bruité');
subplot(3,2,6)
plot(fshift,fftshift(ybruit2));
title('representation frequentielle du signal X bruité');
 %}



% Signal bruité 
%{
xbruit =  x + 2*randn(size(x)); 
ybruit = abs(fft(xbruit));
subplot(2,1,1)
plot(fshift2,fftshift(abs(y)));
title('representation frequentielle du signal X non bruité');
grid on
subplot(2,1,2)
plot(fshift2,fftshift(ybruit));
title('representation frequentielle du signal X bruité');
grid on

%}







xbruit =  x + 2*randn(size(x));
ybruit = abs(fft(xbruit));

xbruit2 = x + 50*randn(size(x));
ybruit2 = abs(fft(xbruit));


subplot(3,2,1)
plot(t,x)
title('representation temporelle du signal X non bruité');
grid on

subplot(3,2,2)
plot(fshift2,fftshift(abs(y)));
title('representation frequentielle du signal X non bruité');
grid on 

subplot(3,2,3)
plot(t,xbruit)
title('representation temporelle du signal X bruité');
grid on

subplot(3,2,4)
plot(fshift2,fftshift(abs(ybruit)));
title('representation frequentielle du signal X bruité');
grid on

subplot(3,2,5)
plot(t,xbruit2)
title('representation temporelle du signal X bruité');
grid on

subplot(3,2,6)
plot(fshift2,fftshift(abs(ybruit2)));
title('representation frequentielle du signal X bruité');
grid on



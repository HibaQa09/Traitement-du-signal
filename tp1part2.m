clear all
close all
clc

%% Analyse fréquentielle du chant du rorqual bleu

%Question 1:
[whale,fe]=audioread("bluewhale.au");
son=whale(2.45e4:3.10e4);

%question 2:
sound(son,fe)

%visualisation du signal 
te=1/fe;%periode d'echantillonnage
N=length(son);%le nombre d'echantillons
t = (0:N-1)*(10*te);

plot(t,son)
title("signal du chant du rorqual bleu")
xlabel('t')
ylabel('son(t)')
grid on

%%
%question 3:
x = abs(fft(son)).^2/N; 
f = (0:floor(N/2))*(fe/N)/10;
plot(f,x(1:floor(N/2)+1));
title('Le signal densité spectrale de puissance du signal')
grid on






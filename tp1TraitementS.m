clear all 
close all 
clc

%manipulation 1 :
%{
t=0:0.01:1;
sgn1=2*sin(2*pi*2*t);
sgn2=7*sin(2*pi*4*t);
sgn3=0.5*sin(2*pi*6*t);
sgn4=sgn1+sgn2+sgn3
subplot(2,2,1)
plot(t,sgn1)
grid on
title('signal 1')
xlabel('t')
ylabel('sgn1(t)')
subplot(2,2,2)
plot(t,sgn2)
grid on
title('signal 2')
xlabel('t')
ylabel('sgn2(t)')
subplot(2,2,3)
plot(t,sgn3)
grid on
title('signal 3')
xlabel('t')
ylabel('sgn3(t)')
subplot(2,2,4)
plot(t,sgn4)
title('signal 4')
xlabel('t')
ylabel('sgn4(t)')
grid on

%}

%manipulation 2 :

%{
t=-1:0.01:1
s=square(2*pi*t)

plot(t,s)



syms n;
%Fou=(4/pi)*symsum((sin(2*((2*n)+1)*pi*t))/((2*n)+1),n,0,Inf);



fou1=(4/pi)*symsum((sin(2*((2*n)+1)*pi*t))/((2*n)+1),n,0,1);
subplot(2,2,1)
plotyy(t,fou1,t,s)
title("serie de fourier avec n=1")
grid on


fou2=(4/pi)*symsum((sin(2*((2*n)+1)*pi*t))/((2*n)+1),n,0,10);
subplot(2,2,2)
plotyy(t,fou2,t,s)
title("serie de fourier avec n=10")
grid on

fou3=(4/pi)*symsum((sin(2*((2*n)+1)*pi*t))/((2*n)+1),n,0,100);
subplot(2,2,3)
plotyy(t,fou3,t,s)
title("serie de fourier avec n=100")
grid on

fou4=(4/pi)*symsum((sin(2*((2*n)+1)*pi*t))/((2*n)+1),n,0,1000);
subplot(2,2,4)
plotyy(t,fou4,t,s)
title("serie de fourier avec n=1000")
grid on




 subplot(2,1,1);
 S=0;
 t=[0:0.001:2];
 n=20;
 x=square(2*pi*t);
 plot(t,x);
 hold on
  for i=0:n
      S=S+(4/pi)sin(2(2*i+1)*pi*t)/(2*i+1);
      
      plot(t,S)
      pause(1)
  end
%}
%%
%% Analyse fréquentielle du chant du rorqual bleu

%Question 1:
[whale,fe]=audioread("bluewhale.wav");




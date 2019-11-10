%matlab program to find impulse response of transfer function

clc;
clear;
close all;
n=input('enter the numerator:');
d=input('enter the denomerator:');
N=input('input the sampple: ');
subplot(221)
zplane(n,d);
title('pole zero plot');
[m,t]=impz(n,d,N);
subplot(222);
stem(t,m);
xlabel('Time');
ylabel('Magnitude')
title('F[n]');
disp(m);

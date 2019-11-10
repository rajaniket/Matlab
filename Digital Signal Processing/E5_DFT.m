%program to find discrete fourier transform

clc;
clear;
close all;
xn=input('Enter the value of x[n]:');
n=input('Enter the range of x[n]:');
l=length(xn);
xk=[zeros(1,l)];
w=exp(-2*i*pi/l);
for i=1:l
   for j=1:l
       xk(1,i)=xk(1,i)+xn(1,j)* w^((i-1)*(j-1));
   end
end
p=abs(xk);
disp(xk);
subplot(221)
stem(n,xn);
xlabel('magnitude');
ylabel('time');
title('x[n]');
grid on;
subplot(222)
stem(n,p);
xlabel('magnitude');
ylabel('time');
title('X[k]');
grid on;

% Matlab program to find Inverse Discrete Fourier transform 

clc;
clear;
close all;
xk=input('Enter the value of X[k]:');
k=input('Enter the range of X[k]:');
l=length(xk);
xn=[zeros(1,l)];
w=exp(2*i*pi/l);
for i=1:l
    for j=1:l
        xn(1,i)=xn(1,i)+(1/l)*xk(1,j)*w^((i-1)*(j-1));
    end
end
p=abs(xn);
disp(xn);
subplot(221)
stem(k,abs(xk));
xlabel('magnitude');
ylabel('time');
title('x[n]');
grid on;
subplot(222)
stem(k,p);
xlabel('magnitude');
ylabel('time');
title('X[k]');
grid on;

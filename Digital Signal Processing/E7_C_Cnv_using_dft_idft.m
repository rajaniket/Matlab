% Matlab program to find Circular convolution using DFT & IDFT method

clc;
clear;
close all;
x=input('Enter the X[n]');
h=input('Enter the H[n]');
l=length(x);
xk=zeros(1,l);
hk=zeros(1,l);
w=exp(-2i*pi/l);
for i=1:l
    for j=1:l
        xk(i)=xk(i)+x(j)*w^((i-1)*(j-1));
        hk(i)=hk(i)+h(j)*w^((i-1)*(j-1));
    end
end
n=1:l;
subplot(331);
stem(n,xk);
xlabel('magnitude');
ylabel('time');
title('X[k]');
grid on;

subplot(332);
stem(n,hk);
xlabel('magnitude');
ylabel('time');
title('H[k]');
grid on;
yk=[zeros(1,l)];
for i=1:l
    yk(i)=hk(i)*xk(i);
end 
subplot(333);
stem(n,yk);
xlabel('magnitude');
ylabel('time');
title('Y[k]');
grid on;
yn=zeros(1,l);
for i=1:l
    for j=1:l
        yn(i)=yn(i)+yk(j)*(1/l)*w^(-(i-1)*(j-1));
    end
end

subplot(334);
stem(n,yn);
xlabel('magnitude');
ylabel('time');
title('y[n] Circular convolution');
grid on;

disp(xk);
disp(hk);
disp(yk);
disp(yn);

%Prog to find the linear convolution of signal

clc;
clear;
close all;
xn=input('type the range of x[n] :'); 
hn=input('type the range of h[n] :');
x=input('type the value of x[n] :');
h=input('type the value of h[n] :');
l=length(x);
m=length(h);
yn=min(xn)+min(hn):max(xn)+max(hn); %range of convln
k=length(yn);
y=zeros(1,k);
for i=1:k   % i can be treated as n of convolution formula
    for j=1:l  % k can be treated as k of convolution formula
        p=i-j+1; % p is something like (n-k) & +1 is for its matrix valadiation
        if(p>0 && p<m+1)
            y(1,i)=y(1,i)+x(1,j)*h(1,p);
        end
    end
end
disp(x);
disp(h);
disp(y);
subplot(221);
stem(xn,x);
xlabel('time');
ylabel('magnitude');
title('x[n]');
grid on;

subplot(222);
stem(hn,h);
xlabel('time');
ylabel('magnitude');
title('h[n]');
grid on;

subplot(223);
stem(yn,y);
xlabel('time');
ylabel('magnitude');
title('y[n]');
grid on;

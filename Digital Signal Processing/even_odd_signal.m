% Matlab prog to find the even and odd component of signal

clc;
clear;
close all;
q=input('type x[n]= ');
n=input('enter range= ');  %e.g. -2:6 third location is zero that means,type a/c to xn
w=fliplr(q);
e=fliplr(n)*-1;
if(max(n)>max(e))
    d=max(n)-max(e);
    xn1=[zeros(1,abs(d)  ) q];
    xn2=[w zeros(1,abs(d))];
  
else
    k=max(n)-max(e);
    xn2=[zeros(1,abs(k)) w];
    xn1=[q zeros(1,abs(k))];
end
xe=(xn1+xn2)/2;
xo=(xn1-xn2)/2;
r=[n e];
t=min(r):max(r);
subplot(221);
stem(t,xn1);
xlabel('time');
ylabel('magnitude');
title('x[n]');
grid on;

subplot(222);
stem(t,xn2);
xlabel('time');
ylabel('magnitude');
title('x[-n]');
grid on;

subplot(223)
stem(t,xe);
xlabel('time');
ylabel('magnitude');
title('Even Part');
grid on;

subplot(224)
stem(t,xo);
xlabel('time');
ylabel('magnitude');
title('odd part');
grid on;


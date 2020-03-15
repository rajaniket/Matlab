%prog to plot basic functions like unit step, ramp, impulse,sin,cos & exponential

clc;
clear;
close all;
%unit step function
x=-5:1:5;   % defined for stem axis range
xn=[zeros(1,5),ones(1,6)]; % a/c to x length define input values
subplot(3,3,1);
stem(x,xn); % Discrete
xlabel('Time');
ylabel('Magnitude');
title('Unit step function');
grid on;

%ramp function
a=-5:1:5;  
an=[zeros(1,5) ones(1,6)]; 
k=a.*an;
subplot(3,2,2);
stem(a,k);
xlabel('Time');
ylabel('magnitude');
title('Ramp Function');
grid on;

%impulse function
b=-5:1:5;
bn=[zeros(1,5) 1 zeros(1,5)]
subplot(323);
stem(b,bn);         % also stem(b,b) if(b=0:1:5)
xlabel('Time');
ylabel('Magnitude');
title('impulse function');
grid on;

%sine function
n=-5:0.4:5;
kn=sin(n);
subplot(324);
stem(n,kn);
xlabel('Time');
ylabel('Magnitude');
title('Sine function');
grid on;

%cos function
c=-5:0.4:5;
cn=cos(c);
subplot(325);
stem(c,cn);
xlabel('Time');
ylabel('Magnitude');
title('cose function');
grid on;

%exponential
c=-5:0.4:5;
cn=exp(c);
subplot(326);
stem(c,cn);
xlabel('Time');
ylabel('Magnitude');
title('Expo function');
grid on;
    

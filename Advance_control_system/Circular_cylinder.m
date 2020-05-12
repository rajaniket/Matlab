clc;
clear;
close all;
syms x1 x2 x3 x4 h d g a b
h=6;
d=3;
g=1;
a=1;

f=((x1*x1)/(a*a))+((x2*x2)/(a*a))-1;
interval=[-1 5 -2 2 -1 1];
fimplicit3(f, interval);
set(gca,'XLim',[-2 2],'YLim',[-2 2],'ZLim',[-1 1]) 
xlabel('X1'); ylabel('X2'); zlabel('X4');title('Spheroid');

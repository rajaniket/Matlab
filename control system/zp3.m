clc;
clear;
close all;
z=[-1;-2]
p=[0;-4;-6]
[n1,d1]=zp2tf(z,p,5);
printsys(n1,d1)
pzmap(n1,d1);

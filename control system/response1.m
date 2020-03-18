% Step response of given transfer function for time 0 to 2 of  step 0.05s
clc;
clear;
close all;
n1=[0 36];
d1=[1 3 36];
sys=tf(n1,d1);
printsys(n1,d1);
t=0:0.05:2;
step(sys,t); % step response

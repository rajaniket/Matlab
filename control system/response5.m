% step response of a given transfer function
clc;
clear;
close all;
n1=[0 36];
d1=[1 3 36];
sys=tf(n1,d1); % tranfer function
printsys(n1,d1); 
t=0:0.05:2;
step(sys,t);  % step response

% impulse response of transfer function 
clc;
clear;
close all;
n1=[0 30];
d1=[1 5 30];
sys=tf(n1,d1);
printsys(n1,d1);
impulse(sys);

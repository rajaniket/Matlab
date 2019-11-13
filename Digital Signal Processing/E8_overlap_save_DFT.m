clc;
clear;
close all;
xk=input('Enter the value of X[k]:');
k=input('Enter the range of X[k]:');
l=length(xk);
xn=[zeros(1,l)];
w=exp(2*i*pi/l);

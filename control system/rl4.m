% find root locous of given transfer function
clc;
clear;
close all;
n=[1];
d=conv(conv([1,0],[1,4]),[1,5]); %conv(u,v) convolves vectors u and v . Algebraically, convolution is the same operation as multiplying the polynomials whose coefficients are the elements of u and v .
sgrid(0.5,[]);
[k,r]=rlocfind(n,d); % root locous
disp(k);
disp(r);

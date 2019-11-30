clc;
clear;
close all;
n=[1];
d=conv(conv([1,0],[1,4]),[1,5]);
sgrid(0.5,[]);
[k,r]=rlocfind(n,d);
disp(k);
disp(r);

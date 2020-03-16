% Solve the block and obtain transfer function ,system contains feedback,parallel and series 
clc;
clear;
close all;
n1=[1 0];
d1=[0 1];
n2=[0 5];
d2=[0 1];
n3=[0 1];
d3=[1 1 0];
n4=[0 1];
d4=[0 1];
[np,dp]=parallel(n1,d1,n2,d2); % parallel blocks
printsys(np,dp);
[ns,ds]=series(np,dp,n3,d3);  % series block
printsys(ns,ds);
[nf,df]=feedback(ns,ds,n4,d4); % closed loop
printsys(nf,df);


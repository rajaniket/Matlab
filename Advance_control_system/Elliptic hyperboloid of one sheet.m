clc; clear; close all;
syms x1 x2 x3 x4 h d g a b
h=6;
d=3;
g=1;
a=sqrt(2.5);
b=1;
c=sqrt(2.5);
[solx1,solx2,solx3,solx4,params,conds]=solve(x3==0,-x3*(h*x2+d*x2^2+x1*x3)==0,(x1^2/a^2)+(x2^2/b^2)-(x4^2/c^2)-1==0,-g*x3*x4==0,x1,x2,x3,x4,'ReturnCondition',true);
x1val=vpa(solx1);
x2val=vpa(solx2);
x3val=vpa(solx3);
x4val=vpa(solx4);
E=[x1val(3,:);x2val(3,:);x3val(3,:);x4val(3,:)];
 Z=linspace(-2,2,5000);
 Z1=Z;
 N=length(Z);
 X_new=[];
 Y_new=[];
 Z_new=[];
l=1;
for i=1:N
for j=1:N
if((2.0*Z(i)^2 - 5.0*Z1(j)^2 + 5.0)>=0)
 X_new(l)=0.70710678118654752440084436210485*(2.0*Z(i)^2 - 5.0*Z1(j)^2 + 5.0)^(1/2); %this equation is aquired from x1val,x2val...(from command window)
 Y_new(l)=Z1(j);
 Z_new(l)=Z(i);
 l=l+1;
else
continue;
end
end
end
X_new=[X_new -X_new]; % Xnew equation exist twice but with -ve sign
Y_new=[Y_new Y_new];
Z_new=[Z_new Z_new];
scatter3(X_new,Y_new,Z_new,'k');
set(gca,'XLim',[-2 2],'YLim',[-2 2],'ZLim',[-0.8 0.8])
xlabel('X axes')
ylabel('Y axes')
zlabel('Z axes')
title('Elliptic hyperboloid of one sheet')

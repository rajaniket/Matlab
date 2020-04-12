%.......... Spheroid from “New family of 4-D hyperchaotic and chaotic systems with quadric surfaces of equilibria” ........%

clc; clear; close all;
syms x1 x2 x3 x4 h d g a b  % x1,x2,x3 and x4 are variables
h=5; d=3; g=1; a=1; b=1/sqrt(2);
%%% Solving PMSG model %%%
                %  x3==0,
                % -x3*(x2*h+d*x2^2+x1*x3)==0,
                % (x1^2/a^2)+(x2^2/a^2)+(x4^2/b^2)-1==0,
                % -g*x3*x4==0
           
[solx1,solx2,solx3,solx4,Parameter,Condition]=solve(x3==0,-x3*(x2*h+d*x2^2+x1*x3)==0,(x1^2/a^2)+(x2^2/a^2)+(x4^2/b^2)-1==0,-g*x3*x4==0,x1,x2,x3,x4,'ReturnCondition',true );
% Approximated solution 
x1val=vpa(solx1); 
x2val=vpa(solx2);
x3val=vpa(solx3);
x4val=vpa(solx4);

%***********one of the possible Infinite Equilibrium points (acquired from variables x1val, x2val, x3val and x4val)****************%
E=[x1val(3,:);x2val(3,:);x3val(3,:);x4val(3,:)];  %%  [(- 2.0*z^2 - 1.0*z1^2 + 1.0)^(1/2),z1,0,z]

% calculating the points by putting different-different value of z and z1 in 'E'
Z=linspace(-3,3,3500);
Z1=Z;
Length=length(Z);
L=1;
 for i=1:Length
 for j=1:Length
 if((- 2.0*Z(i)^2 - 1.0*Z1(j)^2 + 1.0)>=0)
 Xn(L)=(- 2.0*Z(i)^2 - 1.0*Z1(j)^2 + 1.0)^(1/2);
 Yn(L)=Z1(j);
 Zn(L)=Z(i);
 L=L+1;
 end
 end
 end
X_total=[Xn -Xn]; %  X-cordinate points
Y_total=[Yn Yn];  %  Y-cordinate points
Z_total=[Zn Zn];  %  Z-cordinate points

% Ploting the points X_total, Y_total and Z_total 
scatter3(X_total,Y_total,Z_total,'MarkerEdgeColor','blue');
set(gca,'XLim',[-2 2],'YLim',[-2 2],'ZLim',[-1 1]) 
xlabel('X1'); ylabel('X2'); zlabel('X4');title('Spheroid');



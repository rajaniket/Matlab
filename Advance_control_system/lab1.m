clc;clear all;close all;
p1=[0 -2];
z1=[];
k1=4;
Gs=zpk(z1,p1,k1); %Gs:-OLTF Uncompensated system
Gs_cl=feedback(Gs,1);

%Gcs lead compensated system
z2=[-2.9];p2=[-5.4];k2=[4.69];
Gcs_lead=zpk(z2,p2,k2);
Glead=Gs*Gcs_lead;
Glead_cl=feedback(Glead,1);

%lag compensator
z3=[-0.01];p3=[0.0025];k3=[1];
Gcslag=zpk(z3,p3,k3);
Glead_lag=Glead*Gcslag;
Glead_lag_cl=feedback(Glead_lag,1);

%rootlocous
rlocus(Glead_lag);
figure();

%step response
step(Gs_cl);
hold on;
step(Glead_lag_cl);

t=0:0.1:10;
ramp=1*t;
lsim(Gs_cl,t,t);


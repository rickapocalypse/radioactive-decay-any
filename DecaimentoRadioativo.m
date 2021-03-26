clear all
clc
N0 = 1000;
ti = 0;
dt = 1*10^7;
tf = 10*10^9;
n= tf/dt;
t(1) = 0;
N(1)= N0;
tau = 4.4*10^9;
for i = 1: n
  tn=t(i);
  Nn=N(i);
 N(i+1)= N(i) + funcinN(tn,Nn).*dt;
 t(i+1)= t(i) + dt;
 end
 
 N1 = N0.*e.^(-t/tau);
plot(t,N)
hold on
plot(t,N1,'r')
clc;
clear;
t=1:14
x=load('a4.txt');
x1=reshape(x,[1,14])
f=@(a,t)a(1)./(1+(a(1)/x(1)-1)*exp(-a(2)*(t-t(1))));
a=lsqcurvefit(f,[800 1],t,x1);
figure(1);
subplot(2,1,1);
plot(t,x,'o',t,x1,'r:.');
x2=f(a,t);
plot(t,x,'o',t,x1,'r:.',t,x2,'g*--')
xlabel 时间段 
ylabel 公众号总量（万） 
title('资讯类');
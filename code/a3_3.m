clc;
clear;

xdata=1:14;
ydata = reshape(load('a3_3.txt'),[1,14])/10000;

f=@(x,xdata)ydata(1)*exp(-(x(1))/(1-0.3334)*(xdata-1));
x0=[1,300];
x=lsqcurvefit(f,x0,xdata,ydata)

figure(1);

x2=f(x,xdata);
plot(xdata,ydata,'o',xdata,x2,'r:.')
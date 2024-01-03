xdata=1:14;
ydata = reshape(load('a4.txt'),[1,14])/10000;
ydata2 = reshape(load('a4_1.txt'),[1,14])/10000;
f=@(x,xdata)x(1)*tanh(x(2)*xdata);
x0=[100,-1];
x=lsqcurvefit(f,x0,xdata,ydata)
xx=[0 0];
xx(1)=2.5/7.5*x(1)
xx(2)=sqrt(log(7.5/2.5)/log(2.71))*x(2)
figure(1);
subplot(2,1,1);
x2=f(xx,xdata);
plot(xdata,ydata,'o',xdata,x2,'r:.',xdata,ydata2,'g')
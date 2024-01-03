xdata=1:14;
ydata = reshape(load('a4.txt'),[1,14])/10000;
f=@(x,xdata)x(1)*tanh(x(2)*xdata);
x0=[100,-1];
x=lsqcurvefit(f,x0,xdata,ydata)
figure(1);
x2=f(x,xdata)
plot(xdata,ydata,'o',xdata,x2,'r:.')

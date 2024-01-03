clc;
clear;
n=5;
m=3;
q=load('a1_2.txt')
x=[q(:,1:4)];
y=[x(:,2)];
x1=[x(:,3)];
x2=[x(:,4)];

X=[ones(n,1),x1,x2];
[b,bint,r,rint,s] = regress(y,X);
s2 = sum(r.^2)/(n-m-1);
b,bint,s,s2
rcoplot(r,rint)

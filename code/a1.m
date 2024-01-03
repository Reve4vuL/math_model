clc;
clear;
data = load('a2.txt')
[idx,C,sumD,D]=kmeans(data,4,'dist','sqEuclidean','rep',4)
plot(data(idx==1,1),data(idx==1,2),'k*','MarkerSize',12)
hold on
plot(data(idx==2,1),data(idx==2,2),'k*','MarkerSize',12)
plot(data(idx==3,1),data(idx==3,2),'k*','MarkerSize',12)
plot(data(idx==4,1),data(idx==4,2),'k*','MarkerSize',12)
legend('Region 1','Region 2','Region 3','Data','Location','SouthEast');
hold off；
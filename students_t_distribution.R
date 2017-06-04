#df parameter has to be defined
x<-rt(1000,df=10)
x<-sort(x)
plot(x,dt(x,df=10),main="Student's t Distribution",type = 'l')
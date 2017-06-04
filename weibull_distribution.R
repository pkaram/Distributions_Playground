#shape parameter has to be defined
x<-rweibull(1000,shape = 1)
x<-sort(x)
plot(x,dweibull(x,shape = 1),main="Weibull distribution",type = 'l')
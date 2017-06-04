#shape parameter has to be defined
x<-rgamma(1000,shape = 1)
x<-sort(x)
plot(x,dgamma(x,shape = 1),main="Gamma Distribution",type = 'l')
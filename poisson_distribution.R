#lambda has to be defined
x<-rpois(1000,lambda = 12)
x<-sort(x)
plot(x,dpois(x,lambda = 12),main="Poisson Distribution",type = 'l')
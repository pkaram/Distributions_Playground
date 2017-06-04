#Exponential Distribution
x<-rexp(1000)
x<-sort(x)
plot(x,dexp(x),main="Exponential Distribution",type="l")
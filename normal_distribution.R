#default parameters are used, mean=0,sd=1
x<-rnorm(1000)
x<-sort(x)
plot(x,dnorm(x),type='l',main = "Normal Distribution")
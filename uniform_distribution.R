#default parameters are used, min=0,max=1
x<-runif(1000)
x<-sort(x)
plot(x,dunif(x),main="Uniform Distribution",type = 'l')
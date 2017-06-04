#meanlog=0,sdlog=1 are the default values for the parameters
x<-rlnorm(1000)
x<-sort(x)
plot(x,dlnorm(x),main = 'Lognormal distribution',type = 'l')
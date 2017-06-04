#
x<-rlnorm(1000)
x<-sort(x)
plot(x,dlnorm(x),main = 'Lognormal distribution',type = 'l')
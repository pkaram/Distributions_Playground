#location=0 & scale=1 are default values
x<-rcauchy(50)
x<-sort(x)
plot(x,dcauchy(x),main = "Cauchy Distribution",type='l')
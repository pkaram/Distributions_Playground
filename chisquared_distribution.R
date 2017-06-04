#df has to be defined
x<-rchisq(1000,df=3)
x<-sort(x)
plot(x,dchisq(x,df=3),main = "Chi-squared Distribution",type="l")
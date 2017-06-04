#size & prob are parameters that have to be defined
#size corresponds to number of trials and prob to probability of success
x<-rbinom(1000,size=100,prob=0.2)
x<-sort(x)
plot(x,dbinom(x,size = 100,prob = 0.2),main="Binomial Distribution",type='l')
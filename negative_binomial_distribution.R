#size & prob are parameters that have to be defined
#size corresponds to number of trials and prob to probability of success
x<-rnbinom(500,size=100,prob=0.2)
x<-sort(x)
plot(x,dnbinom(x,size=100,prob=0.2),main="Negative Binomial Distribution",type = 'l')
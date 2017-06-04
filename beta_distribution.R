#shape1 and shape2, paraemeters of beta distribution have to be defined
x<-rbeta(1000,shape1 = 2,shape2 = 4)
x<-sort(x)
plot(x,dbeta(x,shape1 = 2,shape2 = 4),main="Beta Distribution",type='l')
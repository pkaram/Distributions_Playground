#m,n,k parameters have to be defined
x<-rhyper(1000,m=500,n=200,k=200)
x<-sort(x)
plot(x,dhyper(x,m=500,n=200,k=200),main='Hypergeometric Distribution',type = 'l')
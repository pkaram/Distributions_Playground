#probability of success in each trial has to be defined
x<-rgeom(1000,prob = 0.2)
x<-sort(x)
plot(x,dgeom(x,prob = 0.2),main="Geometric Distribution",type = 'l')
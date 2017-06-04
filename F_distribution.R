#df1 & df2 parameters have to be defined
x<-rf(1000,df1=5,df2=20)
x<-sort(x)
plot(x,df(x,df1=5,df2=20),main="F distribution",type="l")
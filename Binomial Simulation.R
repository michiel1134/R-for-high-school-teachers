##Let's assume that you are a 60% free-throw shooter and that each shot is 
## a random and independent chance event.  Let's simulate taking a different number
## of shots at the free-throw line and evaluate the mean and standard deviation of 
## each trial.  


## Suppose we take 10 free-throw shots each day for a year.
x2=rbinom(365, 10, .6)
hist(x2, breaks=seq(-0.5,12.5,1), xlab="Shots Made out of 10 Attempts",main="Taking Free-Throws Each Day of the Year", prob=T, col=c("purple","gold"))
##compare the simulated values to the theoretical values
10*.6  ##theoretical mean
mean(x2) ##simulated mean
sqrt(10*.6*.4)  ##theoretical standard deviation
sd(x2) ##simulated standard deviation
curve(dnorm(x,6 ,sqrt(10*.6*.4) ), add=T)


## Suppose we take 20 free-throw shots each day for a year.
x3=rbinom(365, 20, .6)
hist(x3, breaks=seq(5.5,22.5,1), xlab="Shots Made out of 20 Attempts",main="Taking Free-Throws Each Day of the Year", prob=T, col=c("purple","gold"))
##compare the simulated values to the theoretical values
20*.6  ##theoretical mean
mean(x3) ##simulated mean
sqrt(20*.6*.4)  ##theoretical standard deviation
sd(x3) ##simulated standard deviation
curve(dnorm(x,12 ,sqrt(20*.6*.4) ), add=T)



## Suppose we take 50 free-throw shots each day for a year.
x4=rbinom(365, 50, .6)
hist(x4, breaks=seq(15.5,52.55,1), xlab="Shots Made out of 50 Attempts",main="Taking Free-Throws Each Day of the Year", prob=T, col=c("purple","gold"))
##compare the simulated values to the theoretical values
50*.6  ##theoretical mean
mean(x4) ##simulated mean
sqrt(50*.6*.4)  ##theoretical standard deviation
sd(x4) ##simulated standard deviation
curve(dnorm(x,30 ,sqrt(50*.6*.4) ), add=T)



## Suppose we take 100 free-throw shots each day for a year.
x3=rbinom(365, 100, .6)
stripchart(x3, method="stack", pch=20, at=0, xlab="Shots Made out of 100 Attempts",main="Taking Free-Throws Each Day of the Year", offset=.2)
##compare the simulated values to the theoretical values
100*.6  ##theoretical mean
mean(x3) ##simulated mean
sqrt(100*.6*.4)  ##theoretical standard deviation
sd(x3) ##simulated standard deviation


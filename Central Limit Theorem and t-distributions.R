
##Central Limit Theorem
income=read.csv(file.choose())
str(income)
head(income)
attach(income)
par(mfrow=c(1,1))
pop=income$CEO.Annual.Pay
pop1=gsub(",","",pop)
pop2=as.numeric(pop1)
pop1=pop2
hist(pop2, nclass=12, col="blue", main="CEO Income") ##Some salaries over $26 million per year
summary(pop2)
mean(pop2)
sd(pop2)

## Suppose we randomly sample 5 CEO.  Let's look at the distribution
## for 9 differnet random samples of 5 CEO's income.
par(mfrow=c(3,3))
stripchart(sample(pop1,5), method="stack", pch=19, at=0.3, xlim=c(min(pop1),max(pop1)))
stripchart(sample(pop1,5), method="stack", pch=19, at=0.3, xlim=c(min(pop1),max(pop1)))
stripchart(sample(pop1,5), method="stack", pch=19, at=0.3, xlim=c(min(pop1),max(pop1)))
stripchart(sample(pop1,5), method="stack", pch=19, at=0.3, xlim=c(min(pop1),max(pop1)))
stripchart(sample(pop1,5), method="stack", pch=19, at=0.3, xlim=c(min(pop1),max(pop1)))
stripchart(sample(pop1,5), method="stack", pch=19, at=0.3, xlim=c(min(pop1),max(pop1)))
stripchart(sample(pop1,5), method="stack", pch=19, at=0.3, xlim=c(min(pop1),max(pop1)))
stripchart(sample(pop1,5), method="stack", pch=19, at=0.3, xlim=c(min(pop1),max(pop1)))
stripchart(sample(pop1,5), method="stack", pch=19, at=0.3, xlim=c(min(pop1),max(pop1)))
par(mfrow=c(1,1))
## Note how some samples contain outliers, some don't.
## The CLT does not apply to sample means of size 5 for this clearly
##  non-normal population distribution.  Let's look at the actual sampling
## distribution of size 5 for from this population via simulation.
xbar=c()
sd=c()
k=c()
for(i in 1:1000){k=sample(pop1,30) ##feel free to change sample size from 5 
  xbar[i]=mean(k)
 	sd[i]=sd(k)
}
hist(xbar, main="Distribution of sample means of size n",nclass=20, col="lightblue", prob=T)
text(mean(xbar)+2.3*sd(xbar),1.7*10^-7, c("              =  n ",length(k)))
curve(dnorm(x, mean(pop1), sd(pop1)/sqrt(length(k))), add=T)
## do rhe samples means follow a normal distribution?  Let's see how
## the 68-95-99.7% rule checks out.
length(xbar[xbar>mean(xbar)-sd(xbar) & xbar < mean(xbar)+sd(xbar)])/length(xbar)
length(xbar[xbar>mean(xbar)-2*sd(xbar) & xbar < mean(xbar)+2*sd(xbar)])/length(xbar)
length(xbar[xbar>mean(xbar)-3*sd(xbar) & xbar < mean(xbar)+3*sd(xbar)])/length(xbar)
## now repeat from line 35 and increasing the sample size on line 38.



## t-distributions, why do we use them?
## Recall that we t-distributions for numerical data when we don't know the
## standard deviation of the population (which is typically the case).
## Ideally the popuation(s) we are sampling from should be normally disrtibuted.
## Let's compare using a t-distribution against a z-distribution by simulating
## taking samples from a normal population.  Assume heights of students follows 
## a normal distribution with µ=68 and sigma=4.  Let's start with samples of size 5.
## Let's first look at the sampling variability by plotting 9 different SRS's of
## size 5.
par(mfrow=c(3,3))
stripchart(rnorm(5,68,4), method="stack", pch=19, at=0.3, xlim=c(50,86))
stripchart(rnorm(5,68,4), method="stack", pch=19, at=0.3, xlim=c(50,86))
stripchart(rnorm(5,68,4), method="stack", pch=19, at=0.3, xlim=c(50,86))
stripchart(rnorm(5,68,4), method="stack", pch=19, at=0.3, xlim=c(50,86))
stripchart(rnorm(5,68,4), method="stack", pch=19, at=0.3, xlim=c(50,86))
stripchart(rnorm(5,68,4), method="stack", pch=19, at=0.3, xlim=c(50,86))
stripchart(rnorm(5,68,4), method="stack", pch=19, at=0.3, xlim=c(50,86))
stripchart(rnorm(5,68,4), method="stack", pch=19, at=0.3, xlim=c(50,86))
stripchart(rnorm(5,68,4), method="stack", pch=19, at=0.3, xlim=c(50,86))
par(mfrow=c(2,1))

## Now, for the exact same samples, let'scompute the z-statistic and the 
## the t-statistic for each sample.
xbar=c()
sd=c()
z=c()
t=c()
k=c()
for(i in 1:1000){k=rnorm(5,68,4) ##feel free to change sample size from 5 
xbar[i]=mean(k)
sd[i]=sd(k)
z[i]=(mean(k)-68)/(4/(sqrt(length(k))))
t[i]=(mean(k)-68)/(sd(k)/(sqrt(length(k))))
}
par(mfrow=c(2,1))
hist(z, main="z-statistic, population std. dev. known", breaks=seq(round(min(t))-1,-(round(min(t))-1),.25), col="green2", prob=T)
curve(dnorm(x, 0, 1), add=T)
hist(t, main="t-statistic, population std. dev. unknown",  breaks=seq(round(min(t))-1,-(round(min(t))-1),.25), col="plum", prob=T)
curve(dnorm(x, 0,1), add=T, col="darkblue", lty=2) ##normal curve- not the best fit
curve(dt(x, df=length(k)-1), add=T) ##t-curve with correct df


## Lastly, let's check the 68-95-99.7% rule for both the z and t statistc.
## Note how the t-statistic does not match the rule as closely.
length(z[z>-1&z<1])/length(z)
length(z[z>-2&z<2])/length(z)
length(z[z>-3&z<3])/length(z)

## But t statistics don't follow the empirical rule.
length(t[t>-1&t<1])/length(t)
length(t[t>-2&t<2])/length(t)
length(t[t>-3&t<3])/length(t)


length(t[t>-1&t<1])/length(t) ## observed proportion with ±1 std.dev on t-dist
pt(1,df=length(k)-1)-pt(-1,df=length(k)-1) ## theoretical proportion with ±1 std.dev on t-dist

length(t[t>-2&t<2])/length(t)  ## observed proportion with ±2 std.dev on t-dist
pt(2,df=length(k)-1)-pt(-2,df=length(k)-1) ## theoretical proportion with ±2 std.dev on t-dist

length(t[t>-3&t<3])/length(t)  ## observed proportion with ±3 std.dev on t-dist
pt(3,df=length(k)-1)-pt(-3,df=length(k)-1) ## theoretical proportion with ±3 std.dev on t-dist

## To summarize, we t-distributions because it more accurately describes the 
## sampling distribution of sample means when the std. dev. of the population is unknown.

##  See IC9.1- z-tests and power of a test referring to Sad Man's Casino
##  Suppose we suspect that a die is loaded so that rolling a 1 shows up less often
## than it should by random chance.  We compare the theoretical sampling
## distribution of p-hat assuming the die is not loaded vs. two values under
## the alternative, that a 1 shows up 14% and 12% of the time.

par(mfrow=c(3,1))
stripchart(rbinom(100,300,1/6)/300,at=0, method="stack",pch=20, offset=.25,col="blue", main="Simulated Sampling Dist. of p-hat under H0", xlim=c(0.05,0.25), sub="100 SRS's assuming p=1/6")
abline(v=.131)
text(0.11,1,"reject Ho")
text(0.16,1,"fail to reject Ho")
stripchart(rbinom(100,300,.14)/300,at=0, method="stack",pch=20, offset=.25,col="blue", main="Simulated Sampling Dist. of p-hat under Ha", xlim=c(0.05,0.25), sub="100 SRS'sassuming p=0.14")
abline(v=.131)
text(0.11,1,"reject Ho")
text(0.16,1,"fail to reject Ho")
stripchart(rbinom(100,300,.12)/300,at=0, method="stack",pch=20, offset=.25,col="blue", main="Simulated Sampling Dist. of p-hat under Ha", xlim=c(0.05,0.25), sub="100 SRS's assuming p=0.12")
abline(v=.131)
text(0.11,1,"reject Ho")
text(0.16,1,"fail to reject Ho")

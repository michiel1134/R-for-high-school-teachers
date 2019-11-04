x=seq(-6,6,.001)
plot(100,0,xlim=c(-6,6), ylim=c(-6,6), xlab="x", ylab="y",xaxt='n',yaxt='n')
lines(x,4-0.5*x^2)
abline(h=seq(-6,6,1), lwd=.15)
abline(v=seq(-6,6,1), lwd=.15)
abline(v=0, lwd=2.5)
abline(h=0, lwd=2.5)
n=seq(-6,6,2)
text(n[n!=0],.33,n[n!=0],cex=.85)
text(.33,n[n!=0],n[n!=0],cex=.85)

x=seq(-6,6,.001)
plot(100,0,xlim=c(-2,10), ylim=c(-2,30), xlab="x", ylab="y",xaxt='n',yaxt='n')
abline(h=seq(-5,30,5), lwd=.15)
abline(v=seq(-2,10,2), lwd=.15)
abline(v=0, lwd=2.5)
abline(h=0, lwd=2.5)
n=seq(-6,10,2)
m=seq(0,30,5)
text(n[n!=0],.33,n[n!=0],cex=.85)
text(.33,m[m!=0],m[m!=0],cex=.85)


x=seq(-6,6,.001)
plot(100,0,xlim=c(-2,3), ylim=c(-2,4),xaxt='n',yaxt='n')
abline(h=-2:5, lwd=.15)
abline(v=-2:5, lwd=.15)
abline(v=0, lwd=2.5)
abline(h=0, lwd=2.5)
n=seq(-6,10,1)
m=seq(-3,30,1)
text(n[n!=0],.33,n[n!=0],cex=.85)
text(.33,m[m!=0],m[m!=0],cex=.85)

y1=-2/(sin(pi/4*x))
y2=-2/(cos(pi/4*x))
y3=-2*tan(pi/4*x)
y4=-2/(tan(pi/4*x))

x=seq(-10/5,10.5,.001)
plot(100,0,xlim=c(-10.2,10.2), ylim=c(-10,10),xaxt='n',yaxt='n', xlab="",ylab="", main="D")
lines(x,y1)
abline(v=0, lwd=3)
abline(h=0, lwd=3)
n=seq(-10,10,2)
abline(v=-10:-10, lwd=.15)
abline(h=-10:10, lwd=.15)
m=seq(-10,10,2)
text(n[n!=0],.33,n[n!=0],cex=.85)
text(.33,m[m!=0],m[m!=0],cex=.85)

x=seq(-10.5,10.5,.001)
y5=2+sqrt((((x-3)^2)/9+1)/(9/16))
y6=-y5
plot(100,0,xlim=c(-10.2,10.2), ylim=c(-10,10),xaxt='n',yaxt='n', xlab="",ylab="", main="D")
lines(x,y5)
lines(x,y6)
abline(v=0, lwd=3)
abline(h=0, lwd=3)
n=seq(-10,10,2)
abline(v=-10:10, lwd=.15)
abline(h=-10:10, lwd=.15)
m=seq(-10,10,2)
text(n[n!=0],.33,n[n!=0],cex=.85)
text(.33,m[m!=0],m[m!=0],cex=.85)



##conics


par(mfrow=c(2,3))
x=seq(-10.5,10.5,.001)
y7=sqrt(((1+((x+1)^2)/49))*9)
y8=2+y7
y9=2-y7
plot(100,0,xlim=c(-10.2,10.2), ylim=c(-10,10),xaxt='n',yaxt='n', xlab="",ylab="", main="A")
lines(x,y8)
lines(x,y9)
abline(v=0, lwd=3)
abline(h=0, lwd=3)
n=seq(-10,10,2)
abline(v=-10:10, lwd=.15)
abline(h=-10:10, lwd=.15)
m=seq(-10,10,2)
text(n[n!=0],.33,n[n!=0],cex=.85)
text(.33,m[m!=0],m[m!=0],cex=.85)

y10=sqrt(((1-((x+1)^2)/49))*9)
y11=2+y10
y12=2-y10
plot(100,0,xlim=c(-10.2,10.2), ylim=c(-10,10),xaxt='n',yaxt='n', xlab="",ylab="", main="B")
lines(x,y11)
lines(x,y12)
abline(v=0, lwd=3)
abline(h=0, lwd=3)
n=seq(-10,10,2)
abline(v=-10:10, lwd=.15)
abline(h=-10:10, lwd=.15)
m=seq(-10,10,2)
text(n[n!=0],.33,n[n!=0],cex=.85)
text(.33,m[m!=0],m[m!=0],cex=.85)


y13=sqrt(-1*((1-((x+1)^2)/49))*9)
y14=2+y13
y15=2-y13
plot(100,0,xlim=c(-10.2,10.2), ylim=c(-10,10),xaxt='n',yaxt='n', xlab="",ylab="", main="C")
lines(x,y14)
lines(x,y15)
abline(v=0, lwd=3)
abline(h=0, lwd=3)
n=seq(-10,10,2)
abline(v=-10:10, lwd=.15)
abline(h=-10:10, lwd=.15)
m=seq(-10,10,2)
text(n[n!=0],.33,n[n!=0],cex=.85)
text(.33,m[m!=0],m[m!=0],cex=.85)

y16=sqrt(((1-((x+1)^2)/9))*49)
y17=2+y16
y18=2-y16
plot(100,0,xlim=c(-10.2,10.2), ylim=c(-10,10),xaxt='n',yaxt='n', xlab="",ylab="", main="D")
lines(x,y17)
lines(x,y18)
abline(v=0, lwd=3)
abline(h=0, lwd=3)
n=seq(-10,10,2)
abline(v=-10:10, lwd=.15)
abline(h=-10:10, lwd=.15)
m=seq(-10,10,2)
text(n[n!=0],.33,n[n!=0],cex=.85)
text(.33,m[m!=0],m[m!=0],cex=.85)


y19=sqrt(-1*((1-((x+1)^2)/9))*49)
y20=2+y19
y21=2-y19
plot(100,0,xlim=c(-10.2,10.2), ylim=c(-10,10),xaxt='n',yaxt='n', xlab="",ylab="", main="E")
lines(x,y20)
lines(x,y21)
abline(v=0, lwd=3)
abline(h=0, lwd=3)
n=seq(-10,10,2)
abline(v=-10:10, lwd=.15)
abline(h=-10:10, lwd=.15)
m=seq(-10,10,2)
text(n[n!=0],.33,n[n!=0],cex=.85)
text(.33,m[m!=0],m[m!=0],cex=.85)


y25=sqrt(((1+((x+1)^2)/9))*49)
y26=2+y25
y27=2-y25
plot(100,0,xlim=c(-10.2,10.2), ylim=c(-10,10),xaxt='n',yaxt='n', xlab="",ylab="", main="F")
lines(x,y26)
lines(x,y27)
abline(v=0, lwd=3)
abline(h=0, lwd=3)
n=seq(-10,10,2)
abline(v=-10:10, lwd=.15)
abline(h=-10:10, lwd=.15)
m=seq(-10,10,2)
text(n[n!=0],.33,n[n!=0],cex=.85)
text(.33,m[m!=0],m[m!=0],cex=.85)

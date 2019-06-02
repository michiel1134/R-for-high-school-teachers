folder="~/Downloads/School/Gradebook/2018-19 Semester 2 Gradebooks"
list.files(path=folder)
p2=read.csv("~/Downloads/School/Gradebook/2018-19 Semester 2 Gradebooks/Period2Gradebook.csv")
p3=read.csv("~/Downloads/School/Gradebook/2018-19 Semester 2 Gradebooks/Period3Gradebook.csv")
p4=read.csv("~/Downloads/School/Gradebook/2018-19 Semester 2 Gradebooks/Period4Gradebook.csv")
p5=read.csv("~/Downloads/School/Gradebook/2018-19 Semester 2 Gradebooks/Period5Gradebook.csv")
p6=read.csv("~/Downloads/School/Gradebook/2018-19 Semester 2 Gradebooks/Period6Gradebook.csv")
p7=read.csv("~/Downloads/School/Gradebook/2018-19 Semester 2 Gradebooks/Period7Gradebook.csv")
Period2=paste(p2$First.Name,p2$Last.Name, sep=" ")
Period3=paste(p3$First.Name,p3$Last.Name, sep=" ")
Period4=paste(p4$First.Name,p4$Last.Name, sep=" ")
Period5=paste(p5$First.Name,p5$Last.Name, sep=" ")
Period6=paste(p6$First.Name,p6$Last.Name, sep=" ")
Period7=paste(p7$First.Name,p7$Last.Name, sep=" ")


rem=c(32,31,30,29,4,28,8,24,3,27,7,23,12,2,26,20,16)
ppp2=setdiff(1:32,rem[1:(32-length(Period2))])
ppp3=setdiff(1:32,rem[1:(32-length(Period3))])
ppp4=setdiff(1:32,rem[1:(32-length(Period4))])
ppp5=setdiff(1:32,rem[1:(32-length(Period5))])
ppp6=setdiff(1:32,rem[1:(32-length(Period6))])
ppp7=setdiff(1:32,rem[1:(32-length(Period7))])

## Ben not in corner, Aiden up front
seat2=c()
j=1
pppp2=sample(Period2)
for( i in 1:32) {
  seat2[i]=if(i %in% ppp2) pppp2[j] else "XXXXXXXXXXXXX"
  j=ifelse(seat2[i]!="XXXXXXXXXXXXX", j+1,j) 
}
seat2=paste(1:32,seat2, sep=" ")
Seat2=matrix(seat2, ncol=8)
Seat22=Seat2[4:1,8:1]
Seat22


## Ali not to sit by Drew
## Mike Ge in the middle, Michael M up front, Kyle in the middle/back
seat3=c()
j=1
pppp3=sample(Period3)
for( i in 1:32) {
  seat3[i]=if(i %in% ppp3) pppp3[j] else "XXXXXXXXXXXXX"
  j=ifelse(seat3[i]!="XXXXXXXXXXXXX", j+1,j) 
}
seat3=paste(1:32,seat3, sep=" ")
Seat3=matrix(seat3, ncol=8)
Seat33=Seat3[4:1,8:1]
Seat33

seat4=c()
j=1
pppp4=sample(Period4)
for( i in 1:32) {
  seat4[i]=if(i %in% ppp4) pppp4[j] else "XXXXXXXXXXXXX"
  j=ifelse(seat4[i]!="XXXXXXXXXXXXX", j+1,j) 
}
seat4=paste(1:32,seat4, sep=" ")
Seat4=matrix(seat4, ncol=8)
Seat44=Seat4[4:1,8:1]
Seat44


## Daniela to sit in seats 1-4
seat5=c()
j=1
pppp5=sample(Period5)
for( i in 1:32) {
  seat5[i]=if(i %in% ppp5) pppp5[j] else "XXXXXXXXXXXXX"
  j=ifelse(seat5[i]!="XXXXXXXXXXXXX", j+1,j) 
}
seat5=paste(1:32,seat5, sep=" ")
seat5
Seat5=matrix(seat5, ncol=8)
Seat5
Seat55=Seat5[4:1,8:1]
Seat55

seat6=c()
j=1
pppp6=sample(Period6)
for( i in 1:32) {
  seat6[i]=if(i %in% ppp6) pppp6[j] else "XXXXXXXXXXXXX"
  j=ifelse(seat6[i]!="XXXXXXXXXXXXX", j+1,j) 
}
seat6=paste(1:32,seat6, sep=" ")
Seat6=matrix(seat6, ncol=8)
Seat66=Seat6[4:1,8:1]
Seat66


## Jake sits up front.
seat7=c()
j=1
pppp7=sample(Period7)
for( i in 1:32) {
  seat7[i]=if(i %in% ppp7) pppp7[j] else "XXXXXXXXXXXXX"
  j=ifelse(seat7[i]!="XXXXXXXXXXXXX", j+1,j) 
}
seat7=paste(1:32,seat7, sep=" ")
seat7
Seat7=matrix(seat7, ncol=8)
Seat7
Seat77=Seat7[4:1,8:1]
Seat77


write.csv(Seat22,"Period 2 Seating Chart.csv")
write.csv(Seat33,"Period 3 Seating Chart.csv")
write.csv(Seat44,"Period 4 Seating Chart.csv")
write.csv(Seat55,"Period 5 Seating Chart.csv")
write.csv(Seat66,"Period 6 Seating Chart.csv")
write.csv(Seat77,"Period 7 Seating Chart.csv")


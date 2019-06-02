#########################################################################
##################### Lesson 5 : Data Frames ############################
#########################################################################
#########################################################################

# The goal of this lesson is to learn how to analyze the data frames. 
# We will learn how to use the R Studio to:
# 5.1: Make data frames
# 5.2: Subset data frames 1
# 5.3: Subset data frames 2


####################### 5.1: Making Data Frames ##########################

# So far, we have only learned how to create a vector, which is a collection 
# of one variable.  Suppose we have more than one variable.  Here use use a 
# data frame. A data frame is a collection of variables from a population, 
# where a row represents one particular individual from the population.

# Suppose we want to compare favorite pet preference by gender.  We sample
# some of our classmates.
 
gender=c("M","M","F","F","F","M","F","F","M","F","F","M","M","F","M","F")
pet=c("cat","dog","dog","fish","dog","cat","dog","reptile","cat","dog","dog","cat","dog","reptile","cat","cat")

# We can now bind these two vectors together into a data frame.

data=data.frame(gender, pet)    # stores it as a data frame

data

### Two -way tables ###

# We can construct a two way table with the following command.

table(gender, pet) 

# Just a note, since we already defined the vectors "gender" and "pet," this
# last command uses those vector, not the data frame "data" that we created.

# One big task that statisticians need to do is to subset our data.  Before we
# do so, let's suppose that in addition to gender and favorite pets, we also 
# asked our classmates about their grade in the class (as a %) and how many
# siblings they have.

grade=c(76, 78, 88, 93, 86, 89, 73, 86, 96, 84, 80, 67, 83, 89, 79, 91)

siblings=c(2, 1, 0, 2, 3, 2, 1, 0, 4, 2, 2, 0, 1, 2, 1, 0)

data=data.frame(gender, pet, grade, siblings)

data

# Now we have a more complicateed data frame. We can see what is in
# the data frame, without having to print out all the data, with the
# str() command, which stands for structure.

str(data)

# Note the $ signs- these are the variables.  Also, it says "factor"
# after the categorical variables and "num" after the numeric variables.  

### The $ sign ###

# The $ sign allows us to call up a column (variable) from a data frame,
# so that it ignores the rest of the data frame.  We start with the name
# of the data frame, followed by the $, then the name of the variable.

data$grade

# Now we are able to calculate the mean and standard deviation of the grades.

mean(data$grade)

sd(data$grade)

# We can also make a histogram.

hist(data$grade, col="orange", main="Disribution of Class Grades")

# Likewise, we can make a barchart of the favorite pets.

barplot(table(data$pet), main="Favorite Pets", col=rainbow(4), ylim=c(0,8), ylab="Frequency")
box()

barplot(table(data$gender), main="Gender", col=rainbow(2), ylab="Frequency")

###################### 5.2: Subsetting Data Frames ##########################

# Let's pull up our data set again.

data

# We can call up specific values in our data set in the following template:
# nameofdataframe[row #,column #]

data[1,1]

data[5,3]

# We can also call up an entire row or collumn by leaving it blank.

data[1,]

data[3,]

data[,1]

data[,3]

# Or we can call multiple rows and/or columns.

data[1:4,]

data[ , 2:3]

data[1:4,1:3]

# Or else we can be selective:

data[c(2,3,6,7),]

data[,c(1,3,4)]

# Usually, we are interested in examining specific variables.  From our current
# data set, suppose we wnat to determine if there is a relationship between
# gender and grade in the course. We would like to be able to subset our data, 
# like finding the average male grade and aver female grade in the course.  We 
# probably also would like to make some plots and compare the spread of the 
# grades males and females.  

# Let's look at the distribution of grades again.

data[ ,3]

data$grade

hist(data$grade, col="orange", main="Disribution of Class Grades")

abline(v=mean(data$grade),col="red", lty=3)

mean(data$grade)

sd(data$grade)

# We can use [ ]'s to subset data.  

# To call a whole row, the format is 
# nameofdataframe$nameofvariable1[nameofdataframe$nameofvariable2 == "leveloffactor"]

 data$grade[data$gender=="M"]
 
 data$grade[data$gender=="F"]
 
 # It is helpful to store it as a new vector.
 
mgr=data$grade[data$gender=="M"]

fgr=data$grade[data$gender=="F"]

mean(mgr)

mean(fgr)

sd(mgr)

sd(fgr)

# We can make a comparitive boxplot.

boxplot(mgr, fgr, names=c("Male","Female"))

boxplot(mgr, fgr, names=c("Male","Female"), col=c("lightblue","plum"), main="Distribution of Grades", ylab="Score", pch=19)

length(mgr)

length(fgr)

# This gives us a nice descriptive way to compare the grades between males
# and females.  Females have a higher median score than males.  There is 
# more variation in the grades of males compared to the grades of females.
# There is a low outlier in the female group.  However, the low outlier
# is still in the female group is still greater than the minimum male grade.

# We will cover analytical techniques, mainly hypothesis testing, in Lesson XXXX.

# Maybe we suspect the number of siblings may have an effect on a student's
# grade in the course.  

data$siblings

# In this case, we may opt to categorize the number of siblings into two 
# groups: 1 or fewer siblings and 2 or more.  

data$grade[data$sibling < 2]

data$grade[data$sibling <= 1]

# Notice that ≤ is written as <= (less than or equal to) 

data$grade[data$sibling > 1]

data$grade[data$sibling >= 2]

sib1gr=data$grade[data$sibling <= 1]

sib2gr=data$grade[data$sibling > 1]

# Now the same descriptive statistics as before.

mean(sib1gr)

mean(sib2gr)

sd(sib1gr)

sd(sib2gr)

# We can make a comparitive boxplot.

boxplot(sib1gr, sib2gr, names=c("1 or fewer","2 or more"), xlab="Number of Siblings", col=c("lightgreen","magenta"), main="Distributin of Grades", ylab="Score", pch=19)

length(mgr)

length(fgr)

##################### 5.3: Subset data frames 2 #############################

# Now we will learn some more advanced techniques to subset our data.  Most
# of this section can be thought of in terms of set theory, like unions, 
# intersections, and compliments of sets.  We will still use our data set from 
# section 5.2.

### Compliments of sets ###

# Suppose we are interested in determining whether there is an association
# between whether people whose favorite pet is a cat and those who do not
# prefer cats.  We can use != for "not equal to."  

data$grade[data$pet=="cat"]

data$grade[data$pet!="cat"]

catlovers=data$grade[data$pet=="cat"]

notcatlovers=data$grade[data$pet!="cat"] 

mean(catlovers)

mean(notcatlovers)

sd(catlovers)

sd(notcatlovers)

boxplot(catlovers, notcatlovers, names=c("Cats","Other"), xlab="Favorite Pet", col=c("orange","lightblue"), main="Distribution of Grades", ylab="Score", pch=19)

### Intersections of sets ###

# Now we can still subset within the cat lovers.  For example, let's compare
# the grades of the males and females of cat lovers. We can use & to 
# obtain the intersection of two sets.

data$grade[data$pet=="cat" & data$gender=="M"]

data$grade[data$pet=="cat" & data$gender=="F"]
 
# We can see that there is only one female cat lover, so we won't run any
# analysis here.

# We can also do:

data$grade[data$pet=="cat" & data$sibling <= 1]

data$grade[data$pet=="cat" & data$sibling > 1]

data$grade[data$pet=="cat" & data$sibling > 1 & data$gender=="M"]

data$grade[data$pet=="cat" & data$sibling > 1 & data$gender=="F"]

data$grade[data$pet=="cat" & data$sibling <= 1 & data$gender=="F"]

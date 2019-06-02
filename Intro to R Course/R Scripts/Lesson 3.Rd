#########################################################################
################## Lesson 3 : Visualizing Data ##########################
#########################################################################
#########################################################################

# The goal of this lesson is to learn how to make cahrts in R.  We 
# will learn how to use the R console to:
# 3.1: Displaying categorical data
# 3.2: Customizing your graphs 1
# 3.3: Displaying numerical data
# 3.4: Customizing your graphs 2


################# 3.1: Displaying categorical data #######################

# There are not too many graohs available for univariate categorical data, 
# expect pie charts and barcharts

# Suppose we had, as before, the list pets, which was a sample of 20 people's
# favorite pet.  We had 11 who like dogs, 6 cats, 2 fish, and 1 reptile.  We 
# can make a pie chart as follows.

pie(c(11,6,2,1))

# We could also have simply stored a list too.

p=c(11,6,2,1)

pie(p)

# Although the colors are pretty, we don't know which color corresponds to
# which category.  Let's use the list we stored from the last lesson for 
# a nice little trick.

pets=c(rep("dog",11), rep("cat",6), rep("fish",2), "reptile")

table(pets)

pie(table(pets))

# Barplots work in a similar fashion.

barplot(p)

# Again, we don't really know what we are looking for. Let's use the same trick
# as before.

barplot(table(pets))

# We can also add names to our vector p.

names(p)=c("Dog","Cat","Fish","Reptile")

p

barplot(p)

######################### 3.2: Customizing your graphs 1 #########################

# If you are in one of my classes, you would know that I demand a title and 
# labels for each axis (when relevent).  There are many arguments that you have
# control over in R.  Let's see what arguments are available for us in pie 
# charts and barplots.

help(pie)

pie(table(pets), main="Favorite Pet")

pie(table(pets), main="Favorite Pet", sub="n=20")

# The colors are chosen by default.  We can use the col= argument to change 
# colors.  Colors in R are either by name or by number.  Let's start with numbers.

pie(table(pets), main="Favorite Pet", sub="n=20", col=1:4)

# We can also call colors by name.  In fact, there are hundereds of colors
# to choose from. I have included a color chart in the zip file. You can also
# do quick google search for "R colors." Since you will usually be choosing
# multiple colors, be sure to use c() and use quotation marks around each color.


pie(table(pets), main="Favorite Pet", sub="n=20", col=c("dodgerblue","darksalmon","orchid","gold"))

barplot(table(pets), main="Favorite Pet", sub="n=20", col=c("dodgerblue","darksalmon","orchid","gold"))

###################### 3.3: Displaying numerical data ############################

# Switching back to numerical data, we can create stemplots, histograms, boxplots,
# and dotplots. Let's use our heights example from earlier.  Also, let's load the
# vector sec, which will be the times it took to run the 100 yard dash ran by a 
# runner. 

heights=c(65, 67, 61, 70, 68, 59, 68, 70, 71, 66, 72, 65, 64, 74, 68, 67, 
67, 65, 70, 69, 63, 68, 66, 73, 71)

sec=c(11.23, 11.43, 10.93, 12.81, 11.59, 11.33, 10.83, 11.19, 11.31, 10.80, 11.02, 11.73, 11.85)

### Stemplots ###

#  Stem and leaf plots are a quick way to see the shape of a distribution.

stem(heights)

stem(sec)

### Boxplots ###

# Box and whiskers plots seperate numeric data into 4 equal quartiles.  So 25%
# of observations lie within each sector of the boxplot. When outliers are 
# presesnt (using the 1.5*IQR rule), outliers will be represented by a dot.

boxplot(heights)

boxplot(heights, main="Heights of My Classmates")

# The boxplot shows the 5-number summary- min, Q1, median, Q3, and the max.

# We can also create a horizontal boxplot.

boxplot(heights, main="Heights of My Classmates", horizontal=TRUE)

# Let's use our 100-yard dash time.

boxplot(sec, main="100-yard Dash Times")

# Do you see the outlier?  It is represented by the open circle.  If you
# wish to change it from an open ciricle to a closed circle, use the
# argument pch=19 for a closed circle. You can search the internet for more
# pch options.  

boxplot(sec, main="100-yard Dash Times", pch=19)

# You can also add some color.

boxplot(sec, main="100-yard Dash Times", pch=19, col="lightblue")

 ### Histograms ###

# Histograms are also great ways to see the shape of a distribution.

hist(heights)

# We can use the same options as the pie and barcharts.

hist(heights, main="Heights of my Classmates")

hist(heights, main="Heights of my Classmates", col="dodgerblue")

###################### 3.4: Customizing your graphs 2 ######################

# We can add labels to x and y axes with the arguments xlab and ylab.

hist(heights, main="Heights of my Classmates", col="dodgerblue", xlab="Inches", ylab="Number of Students")

### Formatting breaks/class width on histograms ###
# As you can see, R automatically creates the classes for histograms.  For 
# instance, the classes here are 58-60, 60-62, 62-64, etc.  Thus the class 
# width is 2 units (inches in this case).  Suppose I want a histogram where the
# class width is 3 units, specifically 58-61, 61-64, 64-67, 67-70, 70-73, and 
# 73-76.  

hist(heights, main="Heights of my Classmates", col="dodgerblue", xlab="Inches", ylab="Number of Students", breaks=seq(58,76,3))

# Or class width of 1

hist(heights, main="Heights of my Classmates", col="dodgerblue", xlab="Inches", ylab="Number of Students", breaks=seq(58,76,1))

# After examining the last two examples, I prefer the originol breaks created
# by R.  


hist(heights, main="Heights of my Classmates", col="dodgerblue", xlab="Inches", ylab="Number of Students")


hist(heights, main="Heights of my Classmates", col="dodgerblue", xlab="Inches", ylab="Number of Students", labels=TRUE)  ## adds the frequency to each class

# We can change the limits of the x and y axes with the argument xlim and 
# ylim.  Both will require a min and max value, so we'll need to store the
# limits as a vector with the c() function.  


hist(heights, main="Heights of my Classmates", col="dodgerblue", xlab="Inches", ylab="Number of Students", labels=T, ylim=c(0,9), xlim=c(55,80))  


# We can also change the y axis.  By default, histograms use the frequency
# (or number of students in this case).  We can change it to relative 
# frequency (or proportion, x/n) for each category with the prob=TRUE argument.
# We have to make some changes to the labels and ylim.

hist(heights, main="Heights of my Classmates", col="dodgerblue", xlab="Inches", ylab="Proportion of Students", prob=TRUE,  xlim=c(55,80))  

# Most of these same options work for most graphs, like boxplots.


boxplot(sec, main="100-yard Dash Times", pch=19, col="lightblue", ylab="Time in Seconds")

boxplot(sec, main="100-yard Dash Times", pch=19, col="lightblue", ylab="Time in Seconds", ylab=c(10,15))

### Dotplots ###

# Dotplots are useful when you have many repeats and a small range.  Let's 
# load this vector, which represents the number of siblings for students in a 
# classroom.

sibs=c(2,3,0,1,2,1,0,3,2,5,3,1,2,2,1,1,2,2,1,2,0,6,2,1,4,2,3,4,0,2,1,2)

# You can start a dotplot as follows:

stripchart(sibs, method='stack', at=0)
 
 # Now we can add, titles, x and y labels, and even change the 'pch' from squares # to dots, and even add color to the dots.
 
stripchart(sibs, method='stack', at=0, main="Siblings of My Classmates", xlab="Number of Siblings", pch=19, col="blue")
 
# You can space out the dots using the offset argument.

stripchart(sibs, method='stack', at=0, main="Siblings of My Classmates", xlab="Number of Siblings", pch=19, col="blue", offset=.5)

### Saving and/or copying images ###

# Before you use your graph, drag the screen to find the optimal size and 
# dimension for your plot.  You can save the image as a .pdf file under the
# File menu.  Better yet, you can simply copy the image and paste the image
# into another file, such as a word document or powerpoint slide.
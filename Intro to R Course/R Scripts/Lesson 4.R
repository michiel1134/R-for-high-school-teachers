#########################################################################
################## Lesson 4 : Linear Regression #########################
#########################################################################
#########################################################################

# The goal of this lesson is to learn how to analyze the relationship between
# two numerical variables.  We will learn how to use the R Studio to:
# 4.1: Construct and customize scatterplots 
# 4.2: Find the least square residual line (linear model)
# 4.3: Analyze residuals

####################### 4.1: Constructing scatterplots ##################

# Let's suppose we sampled 13 classmate and looked at their height and 
# armspan in inches.  Our goal is to be able to predict a student's height
# given their armspan. 

armspan=c(62, 66, 75, 66, 66, 65, 68, 67, 60, 69, 66, 68, 69)
height=c(64, 68, 74, 65, 69, 66, 67, 67, 62, 70, 68, 67, 70)

# We can make a quick scatterplot as follows:

plot(armspan,height)

# We can use many of the same arguments as we learned in other plots.

plot(armspan,height, main="Armspan vs. Height")

plot(armspan,height, main="Armspan vs. Height",  xlab="Armspan (inches)",ylab="Height (inches)")

plot(armspan,height, main="Armspan vs. Height",  xlab="Armspan (inches)",ylab="Height (inches)", pch=20)

plot(armspan,height, main="Armspan vs. Height",  xlab="Armspan (inches)",ylab="Height (inches)", pch=20, col="purple")

plot(armspan,height, main="Armspan vs. Height",  xlab="Armspan (inches)",ylab="Height (inches)", pch=20, col="purple", xlim=c(60,76))

plot(armspan,height, main="Armspan vs. Height", xlab="Armspan (inches)",ylab="Height (inches)", pch=20, col="purple", xlim=c(60,76), ylim=c(58,80))

# If you ever want to add additional points to a scatterplot, try the points(x,y) function. 
# You can add arguments such as pch and/or color.  The x and y values can either be single 
# numeric values or a vector of x and y values.  For example, suppose wanted to add another 
# person to our sample with an armspan of 73 inches and a height of 71 inches. Perhaps, for
# whatever reason, I wanted to highlight him in the plot.

points(73,71, pch=19, col="red")

########################### 4.2: Finding LSRL #################################

# We see a strong, positive, linear relationship between height and armspan with
# no apparent outliers.  What is your guess for r, the coefficient of correlation?
# We can find it as follows:

cor(armspan,height)

# To get a the rest of the LSRL, we are going to have to create a linear 
# model (lm) between the two variables.

lm(height~armspan)

# I read the "height~armspan" notatation as height in terms of armspan, or 
# more generally, y~x (y in terms of x). This does give us the slope and 
# y-intercept of the LSRL, but there is also more information we can obtain. 
# Let's start by storing the linear model.

LSRL=lm(height~armspan)

summary(LSRL)

# Now we have lots of information.  I have included a seperate file which
# color codes what each piece of information is.

# We can add the LSRL as follows:

abline(LSRL)

# If we don't want a solid black line, we can reload the plot and add some
# change color and the line type of the line.

plot(armspan,height, main="Armspan vs. Height", xlab="Armspan (inches)",ylab="Height (inches)", pch=20, col="purple", xlim=c(60,76), ylim=c(58,80))
abline(LSRL, col="red", lty=2)

####################### 4.3: Analyzing residuals ################################

# Residuals play an important role when trying to predict repsonse variables.
# When we created our linear model (which we staored as LSRL), R calculated 
# many values in the process.  We can see all the information stored with 
# the attributes() function.

attributes(LSRL)

# We notice that the second term is residuals.  Also, we stored fitted.values,
# which will be the predicted values of y for the given x values.  We can call
# each attribute with the $ sign.

LSRL$residuals

LSRL$fitted.values

# The order of these two vectors is the same order as the x-values (in this 
# case the armspan of each classmate). Now let's store these residuals.

resid=LSRL$residuals

pred=LSRL$fitted.values

# Recall that the residuals = observed values - predicted values.  Let's 
# confirm this.

resid

height-pred

# We can see the residuals, which are represented by the distance from each 
# point (observed values) to the LSRL (the predeicted values).  This is a 
# a slightly more advanced piece of code and you are not responsible for 
# repeating it.
boilingtime=scan()
# Now we should make a residual plot, which plots our x-values against our
# residuals.  Let's also add the y=0 line.

plot(armspan, resid, pch=19, col="red", main="Residual Plot", xlab="Armspan (Inches)", ylab="Residual")
abline(h=0,lty=2)

# When analyzing residuals, we are looking for no obvious pattern in the 
# residual plot.  This tells us that a line is a good fit for the data.
# We will see examlples of residuals plots that do show an obvious pattern
# in our hw examples.  In addtion, the distribution of our residually should
# ideally be normal.  We can also plot a histogram of the residuals.

hist(resid, col="yellow", main="Distribution of Residuals")







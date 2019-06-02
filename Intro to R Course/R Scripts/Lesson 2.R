#########################################################################
#################### Lesson 2 : Vectors in R ############################
#########################################################################
#########################################################################

# The goal of this lesson is to learn how to use R to store vectors.  We 
# will learn how to use the R console to:
# 2.1: Store single values 
# 2.2: Storing numeric data
# 2.3: Common statistical functions for numerical data
# 2.4: Creating sequences
# 2.5: Storing categorical data and tables


######### 2.1: Storing single values into R #########

# You can store data into R in four ways- vectors, lists, matrices, and 
# data frames.  In this section, we will be using vectors.  We will see 
# other three types in later sections.  In R, we can think of a vector 
# as a set of different responses of the same variable.  For example, I 
# can measure the height of all 25 students in a classroom in inches. 
# We can make a vaector of the resulting 25 heights in inches.

# To store a single numerical value in R, we can simply use an = sign.

a=10

# Now we have stored a as 10, so every time we use the letter a, R will
# assign it the value of 10.

a+5

3*a

50/a

# In older versions of R, users had to use the symbols <- to represent the
# = sign.  Although we will not use this often in this course, you should be 
# aware of this since many times you will see other users using this (especially
# on internet searches).

b<-7

3*b

b^2

log(b,49)

# We don't have to limit ourselves to one-letter vectors either. Also, never 
# use commas when entering large numbers.  That is, enter 123456 instead of
# 123,456

dog=16

10*dog

log(dog,2)

sqrt(dog)

deliciousfishes=100,000,000

deliciousfishes=100000000

sqrt(deliciousfishes)

# Beside numerical values, we can also store categorical data into R.  However, 
# we do have to be careful.  If we simply write out a word, R interprets
# this as a stored vector.  We will need to use the parentheses "" when 
# entering categorical data. 

c=cat

c="cat"

# Now, there are not too many mathematical functions we can perform on
# the vector cat yet.

############# 2.2: Storing numerical data #############

# Now suppose we did take the height of our 25 classmates in inches.  To
# store multiple values into R we use the c() function and we will need to 
# seperate each observation with a comma.  

heights=c(65, 67, 61, 70, 68, 59, 68, 70, 71, 66, 72, 65, 64, 74, 68, 67, 
67, 65, 70, 69, 63, 68, 66, 73, 71)

# Now it appeared that nothing happened, but no error code is good news! We
# can print the vector we created in two ways:

print(heights)

# Or simply:

heights

# Sometimes, it can be time consuming to put a comma after each number.
# You can try the scan function.  After hiting return the first time, you 
# can simply enter in the numbers seperated with a space.  You will need 
# to hit return twice afterwards until it says "Read (however many) items"

x=scan()
43  43  45  47 43 39 39 44 41   45 40 41 43 44 48 36 40 41 

# This is a great way to copy and paste numeric data into R.

# We can, if desired, perform transformation on data sets once stored.
# For example, suppose we wanted to convert of all the heights we recorded 
# as centimeters instead of inches.  Since 1 in = 2.54 cm, we can store the 
# new vector as follows:

heightscm = 2.54*heights

heightscm

# We see that each height in inches was multiplied by 2.54.  

######### 2.3: Common statistical functions for numerical data #########

# Did your mean stats teacher ever make you find the min, Q1, median,
# Q3, max, mean, standard deviation, or variance by hand?  If you recall,
# that was a lot of work.  These are typically jobs for computers.  Here is
# a list of commmon functions that we use.  I'm using x in the () as a generic
# list which can represent any vector.

mean(x)
sum(x)
sd(x)  # standard deviation
var(x)  # variance
min(x)
max(x)
median(x)
summary(x)  # the five-number summary, along with the mean
sort(x)  # sorts from smallest to largest
sort(x,decr=TRUE)  #add the argument 
length(x)  #finds the sample size

# In fact, we can even confirm that the standard deviation is the square
# root of the variance.

sd(x)

sqrt(var(x))

####################### 2.4: Creating sequences ##############################

# Often we will need to create sequences in R.  If you are counting by 1's, you
# can use the colon :  For example:

1:5

5:11

t=0:15

t

year=1990:2015

year

# You can use the rep() to repeat a value if necessary.

rep(1,4)

# You can combine and store repeats like this:

b=c(rep(1,3), rep(2,5), rep(3,8))

b

# Sometimes, we may need to add a few elements to a list that we have 
# already created.  For example, maybe we need to add the number 4 to the
# vector b.  In this case, we can use this little trick.

b=c(b,4)

b

# The colon for sequences only works for counting by 1's. Suppose we want to
# count by any other number.  For this, we use the seq(from, to, by) function.  

seq(0,1,.1)

f=seq(0,100,4)

f

seq(0,2*pi, pi/8)

################ 2.5: Storing categorical data and tables ####################

# We need to be just a little careful when storing categorical data into R.
# Since letters can represent numbers in R, without using "" around a 
# categorical variable, R thinks the object is stored.  

# Suppose we ask 10 people for their favorite pet.  We will again need the
# c(), or as i call it, the combine function, to store all of the data 
# points.  

favpet=c("cat","dog","dog","fish","dog","cat","dog","reptile","cat","dog")

# Although it is cumbersome, we will need the "" around each term.

# Like numeric data, we can also use the scan function to enter categorical
# variables. However, we will need to add the what="" argument.  Having the
# blank "" tells R to put each entry in parentheses.  

pet=scan(what="")
cat dog dog fish dog cat dog reptile cat   dog

# R is case sensitive. So it will treat "Dog" as a different object than
# "dog."  

# Often times, we may already know how many of each object we have beforehand.
# Suppose, for instance, that we sampled 20 people and that 11 preferred dogs,
# 6 preffered cats, 2 preferred fish, and 1 preferred reptiles. We can use the 
# repeat function, rep(x,n), where x is the object and n is the number of repeats
# for each terms.

rep("dog",11)

# We can now combine many repeats into one vector as follows:

pets=c(rep("dog",11), rep("cat",6), rep("fish",2), "reptile")

pets

# There are not too many functions that we can use on categorical data. However,
# one important function is the table (or tabulate) function.  It will make a 
# frequency table out of the data. It works on numeric data as well.

table(favpet)

table(pets)

table(heights)

############################# Lesson 2 Recap #############################

# R can store vectors of data and we can perform many operations to these vectors.
# To store numeric data, we can use the c( ) function and seperate each entry with 
# a comma.  We can also use the scan( ) function, which is particularly useful when
# copying and pasting values into R.  Similarly, we can store categorical data into R
# but we must always include " " around categorical objects.  We can use the c( ), or 
# we can use scan(what="") to let R know that we are inputting categorical values.  Once
# we have our vectors stored, we can perform nearly any operation we know on the vectors-
# such as finding the mean, standard deviation, etc.  
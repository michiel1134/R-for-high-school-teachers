###############################################
########## Data Frames in R ###################
###############################################

##This section will cover:
#1) Uploading Spreadsheets
#2) Calling variables
#3) Subsetting data

## Uploading your spreadsheet ##

# Before uploading a spreadsheet, we need to make sure 
# that the spreadsheet is organized and properly formatted.
# Each variable being measured should make up a column of 
# the spreadsheet, and each individual should make up the row.
# I recomend that you title each variable as simple as you can.
# Since R is case sensitive, make sure each level of each factor
# has the same name.  

# After cleaning up your spreadsheet, go to the "save as" option
# and save the spreadsheet as a .csv (Comma Seperated Value). 

# To upload, use the read.csv(" ") function. You will need to
# title your data frame and drag the folder of your file into 
# the " " symbols.

# Please download the file "Plant Experiment.csv."  The data set is
# from a block experiment measuring the height of plants under two
# factor- level of sunshine and the presence of fertilizer.

# To upload the spreadsheet, name the data set (use a short easy name)
# and use the read.csv("") function.  Open a folder in your finder and 
# drag the folder into the "".

P=read.csv("~/Desktop/Michiel's Stuff/Intro to R Course/R Scripts/Plant Experiment.csv")

# We have now uploaded the data frame.  You can see it in its entirity.

P

# However, there are better ways to see what is in your data set using 
# the str() (stands for structure) and attributes(). With these, you can 
# see how many variables and individuals are in your data frame (dimensions),
# the name of each variable, and what kind of variable.

str(P)

# We see there are 30 individuals and 5 variables.  In addition, all the 
# names with a $ after it represents the variables (with there name) and
# the classification (Factor= categorical variable, int= integer (discrete
# numerical variable),  num=continuous numerical variable).

# To call up a specific variable from the data frame, use the name of the 
# data set, a $ sign, and the name of the variable.  For example, I can 
# call up all of the heights or the type of light of my experiment.

P$height

P$light

############### 5.2: Functions on Data Frames ####################

# We can now use this idea to find statistics about our data set.  We  
# will begin by looking at all observations.

mean(P$height)

table(P$)
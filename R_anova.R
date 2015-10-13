#This script is for reading in xls data and running an ANOVA for the rebus task.
#The variables are:
  #Within-subject:
    #condition (word or reb)
    #constraint (gen or spec)
    #sense (meaningful or non)

  #Between-subject: block order

  #Dependent: RT

#Step 1: save the data as CSV; make sure it is formatted correctly for R

#Step 2: navigate to the proper folder
setwd("/Users/hcnlab/Documents/Rebus/data analysis")

#Step 3: read in the data
data=read.csv("214to232_withoutclock.csv")

#Step 4: set up linear model
model1=lm(RT~condition+constraint+sense,data)

#Step 5: run the ANOVA
anova(model1)

#Step 5b: run the ANOVA this way:
aov.ex=aov(RT~(condition*constraint*sense),data)

#Step 6: view the results of the second ANOVA
summary(aov.ex)


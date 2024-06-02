#Chapter 11-Lecture Notes-Feb 2
#The header = TRUE argument tells R that the first row of your. file contains the variable names.
#MH.data= read.csv("C:\\Users\\elham\\OneDrive\\Desktop\\MentalHealthData.csv", header=TRUE)
MH.data=read.csv(file.choose(), header = TRUE)
head(MH.data)

percents = MH.data$Percentage
percents

class(percents)

# We can create the histogram by using the hist() function

hist(percents)

hist(percents, main="Percent of Population whose mental health has declined", xlab="Percent of Population Group")

hist(percents, xlim = c(min(percents), max(percents)+10), ylim = c(0,14))

#The breaks argument controls the number of bars, cells or bins of the histogram
hist(percents, breaks = 20)

hist(percents, border = "red", col = "yellow")

round(percents, 0)

# We can create the stem plot by using the stem() function

stem(round(percents, 0))

#scale argument: the scale we want to use for our plot/ width argument: the desired width for our plot 
stem(round(percents, 0), scale = 0.5)

#=====================================================
data()
dataset<- ChickWeight
head(dataset)

dataset$weight
class(dataset$weight)

stem(dataset$weight)


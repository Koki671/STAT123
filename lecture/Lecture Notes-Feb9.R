#Chapter 12

?airquality

head(airquality)

sort(airquality$Temp)

length(airquality) # of columns in data frame

length(airquality$Temp)

middle = (length(airquality$Temp)+1)/2

median = sort(airquality$Temp)[middle]
median

median(airquality$Temp)

quantile(airquality$Temp, 0.25)

quantile(airquality$Temp, 0.75)

quantile(airquality$Temp)


summary(airquality$Temp)

boxplot(airquality$Temp)

#sample variance
sample=airquality$Temp[1:100]
var(sample)

#sample standard deviation
sd(sample)
#or
sqrt(var(sample))

#For population variance when your data set is for the population:
#population size n

n=length(airquality$Temp)

variance<- var(airquality$Temp)*(n-1)/n
sqrt(variance)

#outlier

#20 is an outlier

samp = c(100, 107, 98, 20, 105)

mean(samp)
median(samp)

#If you have an outlier that is small, then the mean will be smaller than
#the median.



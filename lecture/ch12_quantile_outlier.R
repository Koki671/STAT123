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
var(airquality$Temp)

#sample standard deviation
sd(airquality$Temp)
#or
sqrt(var(airquality$Temp))

#For population variance when your data set is for the population:
#population size n

n=length(airquality$Temp)

var(airquality$Temp)*(n-1)/n


#outlier

#20 is an outlier

samp = c(100, 107, 98, 20, 105)

mean(samp)
median(samp)

#If you have an outlier that is small, then the mean will be smaller than
#the median.



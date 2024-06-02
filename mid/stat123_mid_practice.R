sample<-read.csv(file = "/Users/itagakikouki/stat123/stat123mid2/sample_data.csv",header = TRUE)

head(sample)
matrixx<- as.matrix(sample[,2:5])
matrixx
typeof(matrix)
nums <- as.matrix(sample[, -1])
c3<-matrixx[,3]
c3
sc3 = 0
for(i in 1:length(c3)){
 sc3 = sc3 + c3[i]
}
print(sc3)

c2<- matrixx[,2]
c4<- matrixx[,4]

rowsums = rep(0, length(c2))
for(i in 1: length(c2)){
  rowsums[i] = c2[i] + c3[i] + c4[i]
  
}
print(rowsums)



data("USArrests")

head(USArrests)
?USArrests

hist(USArrests$Murder,main = "Nice!", xlab = "koki",xlim = c(min(USArrests$Murder),max(USArrests$Murder)))



gapminder

scatterplot
p<- gapminder$pop
l<- gapminder$lifeExp
plot(l,p)

library(ggplot2)

ggplot(gapminder, aes(x = lifeExp, y = pop)) +
  geom_point()


df <- read.csv("sample_data.csv", stringsAsFactors = FALSE)
nums <- as.matrix(df[, -1])
c3 <- nums[, 3]
sc3 <- 0
for (i in 1:length(c3)) {
  sc3 <- sc3 + c3[i]
}
print(sc3)

c2 <- nums[, 2]
c4 <- nums[, 4]
row_sums <- rep(0, length(c2))
for (i in 1:length(c2)) {
  row_sums[i] <- c2[i] + c3[i] + c4[i]
}
print(row_sums)

# Load the USArrests dataset
data("USArrests")

(a) What is the variable Murder being measured in the data set?
  The variable "Murder" represents the number of murders per 100,000 population.

(b) What type of variable is this?
  The variable "Murder" is a continuous variable.

(c) What is the most appropriate type of graph to visualize the distribution of this variable?
  The most appropriate type of graph to visualize the distribution of a continuous variable is a histogram.

(d) Graph the distribution of the variable (using the type of graph that you identified in part (c)). Your graph should include:
  - a main title.
- x-axis title.
- scales on the x and y-axis which fully extend from at least the min value to at least the max value

# Plot a histogram of the "Murder" variable
hist(USArrests$Murder, main = "Distribution of Murder Rate", xlab = "Murder Rate (per 100,000)", xlim = c(min(USArrests$Murder), max(USArrests$Murder)))














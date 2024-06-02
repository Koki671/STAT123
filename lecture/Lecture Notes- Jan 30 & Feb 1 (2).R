#chapter10

#The min() function returns the minimum value of a vector or data frame.
#The max() function returns the maximum value of a vector or data frame.
numbers <- c(3,1,2,1,10)
min(numbers)  # 1

characters <- c("s", "a", "p", "b")
max(characters)  # "a"
#==================================================================

grades = c("a","b","c")
num = c(15,1,2,3)

pie(num,labels = grades)


grades = c("A", "B", "C", "D", "F")
grades
#or

grades = c(LETTERS[1:4], "F")     #letters give small letters

number = c(15,18,8,5,2)

# we can create a pie chart by using pie() function
#create the pie with 2 labels grades and percents

pie(number, labels = grades, main = "Simple Pie Chart for Stat 123")
?pie

percents = round((number/sum(number))*100, digits = 2)
percents

grades2 = paste(grades, percents, "%")
grades2
pie(number, labels = grades2, main = "Simple Pie Chart for Stat 123")

#add rainbow for more vibrant colours

pie(number, labels = grades2, col = rainbow(length(grades)), main = "Simple Pie Chart for Stat 123")

#==================================================================





?mtcars

mtcars

gearCounts = table(mtcars$gear)
table(mtcars$gear)
barplot(gearCounts)

barplot(gearCounts, main = "Gear Distribution", xlab = "Number of Gears")
?barplot

autvsman = table(mtcars$am)
autvsman

barplot(autvsman, main = "Bar Graph of Auto. vs Man. Cars")
a = table(mtcars$am,mtcars$gear)

a




groupCounts = table(mtcars$am, mtcars$gear)
groupCounts
class(groupCounts)

rownames = c("Automatic", "Manual")

barplot(groupCounts, main = "Distribution of Gears and Transmission", xlab = "Number of Gears", col = c("darkblue", "red"), legend = rownames, beside = TRUE)

#===========================================================
?lynx

class(lynx)

plot(lynx, main = "Line Graph for Lynx Data", xlab = "Year", ylab = "Number of Trappings")



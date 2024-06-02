# "If Statements and Loops in R"

x = 3
if(x>0){
　#３っつの方法
  #print(paste(x,"is a positive"))
  #message(x," is a positive")
  print("x is positive")
}
#Example of If and Else statements: 




# Create a vector called vec
vec = c(4,6,10,-2)

# Print out the original elements of vec
vec


if(sum(vec)==14){
  vec = vec + 1
}
vec


if(sum(vec)!=14){
  vec = vec - 1
}
vec

y=21

if(y%%3 == 0){
  print('y mod 3 = 0')
}

# This if statement, checks to see if the sum of the vector vec
# is 14, if it is then R will add 1 to each element of vec
# If the sum is not 14, then R executes the else statement which says
# to subtract 1 from each element of R. 
if(sum(vec)==14){
  vec = vec + 1
} else {
  vec = vec - 1
}

# If we print out vec after running the loop, we see that, since the 
# sum of the vector was not 14, each element of the vector was subtracted
# by 1. 
vec



#Example of Else-If Statements:

# create a vector called nums with elements 7,2,0,-8 in it.
nums = c(7,2,0,-8)

# The first condition to check is if the length of the vector is 6. If that
# is true (which it isn't because nums only has 4 elements) then we print out
# the statement "nums is long enough!" and R exits the statements. The next
# condition that gets checked (only if the first condition is false) is if 
# the number 2 is one of the elements of the vector nums. If that condition
# is true (which it is), then R prints out "nums includes the number 2" and 
# then exits the statements. Finally, if the first two conditions were both 
# false, then R would append the number 2 to the end of the vector nums and
# print "We have added 2 to nums". 

if(length(nums)==6){
  print("nums is long enough!")
} else if (2 %in% nums) {
  print("nums includes the number 2")
} else{
  #(720-82)になる
  nums = append(nums,2)
  print("We have added 2 to nums")
}


# We can see by the print out that it was the second condition that was true


#Example of a while loop:


# Define a new vector called new_nums which includes elements 3,8,9
new_nums <- c(3,8,9)

# Create a while loop that will check the length of the vector (which starts
# at length 3), and then, if the length of the vector is less than 7, R will
# print out the statement "The length of new_nums is ____ " and include the 
# length of the vector new_nums. Then R will append a new number to the end
# of the vector (thereby increasing its length by 1). And then R loops up to
# check the condition to see if the length of the vector new_nums is still
# less than 7, if it is then it repeats the code, if it isn't then it 
# terminates the loop. 

while(length(new_nums)<7){
  print(paste("The length of new_nums is", length(new_nums)))
  new_nums = append(new_nums,sample(1:20,1))
  print(new_nums)
}

#GEt only one result
if(length(new_nums)<7){
  print(paste("The length of new_nums is", length(new_nums)))
  new_nums = append(new_nums,sample(1:20,1))
  print(new_nums)
}

#print x infinitely 
x = 6
while(x<10){
  print(x)
}

#break使って無限ループさせなくする
x = 6
while(x<10){
  print(x)
  break
}

#practice question
x = 10
while(x<15){
  x = x+1
}

x = 10 
while(x == 10){
  x = x*x
}
x
x = 10 
while(x == 20){
  print("Hello")
}

x = 10 
while(x > 2){
    x = x+1
    print(x)
   }







#For-loop Examples:


# Define a vector called countries
countries <- c("Canada","Mexico","Scottland")

for(item in countries){
  print(paste("The country is",item))
}


values=c(75,100,30,60,85)

for (number in values){
  print(number)
}


# Another way to write a for loop is with an index i
countries <- c("Canada","Mexico","Scottland")
for(i in 1:length(countries)){
  print(paste("The country in position",i,"is",countries[i]))
}

old_vector = c(5,1,-3,0,9,8,-7)

new_vector = numeric()

for (k in 1:length(old_vector)){
  new_vector[k] = 2*old_vector[k] + 3
}

new_vector


#Practice Question writing a for-loop

roots = numeric()
w = c(1,4,81,121,49,361,676,36)

for(i in 1:length(w)){
  roots[i] = sqrt(w[i])
}

roots


#Example using lapply() and sapply()


w = c(1,4,81,121,49,361,676,36)
rts = lapply(w,sqrt)

rts

# Because we used the lapply() function, the output of the vector
# rts is a list. It would make more sense for the output to be a vector
# much like w is a vector. 

# Option 1: Make the output a vector by using the sapply() function instead
rts_2 = sapply(w,sqrt)

rts_2

# Option 2: Use the unlist() function to unlist the elements of the output
# list that you get when using lapply(). 

rts_3 = unlist(rts)

rts_3


#Sometimes R can perform some tasks with using loops

sqrt(w)


matrixA = matrix(sample(30:50, 10, replace=TRUE), nrow=2)
matrixB = matrix(sample(1:5, 8, replace=TRUE), nrow=4)
matrixC = matrix(c(5,2,9,10,3,1,1,0,5), nrow=3)

matrices = list(matrixA, matrixB, matrixC)

lapply(matrices, ncol)

sapply(matrices, ncol)









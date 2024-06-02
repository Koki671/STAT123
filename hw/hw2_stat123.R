UCB<-data(UCBAdmissions)
UCB
rowSums(UCBAdmissions)
nrow(UCBAdmissions)
UCBAdmissions[, ,4]
colSums(UCBAdmissions)
department.D<-UCBAdmissions [, ,4]
department.D
par(mar=c(1,1,1,1))
barplot(department.D,main = "The students in the department D",xlab = "The 
        number ofd students", col = c("lightgreen","lightblue"),
        sub = "Written by Koki Itagaki",legend = c("Admitted", "Rejected")
        ,beside=TRUE)

admitted.females<-UCBAdmissions [1,2 ,4]
admitted.females
pct.admitted.females = round((admitted.females/sum(department.D))*100,
                              digits = 2)
pct.admitted.females
pct.department.D = round((department.D/sum(department.D))*100,
                         digits = 2)
name = c("Admitted males", "Admitted females", "Rejected males", "Rejected fema
        les")
pct.department.D<-paste(name,pct.department.D, "%")
pie(pct.department.D, main = "Pie chart for the department D" )
#legend = 

Value<-read.csv("/Users/itagakikouki/stat123/Government_expenditure_per_student.csv")
Value
expenditure<-Value[,ncol(Value)]
expenditure


hist(expenditure, main ="The goverments expenditure per student", 
     xlab = "The amount of expenditure",sub = "Written by Koki Itagaki")

From the histgram above, we can see that the data loooks symmentric.
However, there are a few extra data on the left side of the peak point.
It is possibly right-skewed, but I would say this is symmentric.


For the center value, I will find the median.
in order to find median, I will sort all data at first.
median(expenditure)
sd(expenditure)
re_expenditure<-round(expenditure,0)
re_expenditure
stem(re_expenditure)

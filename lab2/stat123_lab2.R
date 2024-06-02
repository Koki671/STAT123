#Question 1 
##Question 1
###Question 1


#1. Download the ClinicalTrial dataset posted under Lab Content in Brightspace (under Lab 2)
#and save it to whatever file you are using for this course.

```{r}
#(a)Read the ClinicalTrial file into R and call it BasicCharacteristics
BasicCharacteristics<-read.csv("/Users/itagakikouki/stat123/ClinicalTrial.csv")

BasicCharacteristics

#(b) Print the type of BasicCharacteristics using class() function
class(BasicCharacteristics)

#(c) How many rows and columns are there in the BasicCharacteristics.
dim(BasicCharacteristics)

#nrow(),ncol() is also possible


#(d) Add a new row (127_1271001, Female, >50, Current_Smoker, 90) to the BasicCharacteristics.

BasicCharacteristics<- rbind(BasicCharacteristics, c ("127_1271001", "Female", ">50", "Current_Smoker", 90))
BasicCharacteristics

```

#2. Create a matrix called PatientsMatrix which contains the WEIGHT column of BasicCharacteristics.

```{r}
PatientsMatrix<- as.matrix(BasicCharacteristics)
PatientsMatrix
PatientsMatrix[3,1]
#(a) Re-name the column of PatientsMatrix to WEIGHT.
colnames(PatientsMatrix)<- "WEIGHT"
PatientsMatrix
#(b) Determine the weight over 80 in the PatientsMatrix.
PatientsMatrix[PatientsMatrix[, "WEIGHT"]> 80]
#PatientsMatrix[, "WEIGHT"]> 80

#(c) Determine the average weight in the PatientsMatrix
#Since as.matrix change the type of the patientsMatrix, we need to change it again
mean(as.numeric(PatientsMatrix[ ,'WEIGHT']))

```

```{r}
#3. Create a list called PatientsList which contains the column AGE of the BasicCharacteristics.
PatientsList<-as.list(BasicCharacteristics$AGE)
#(a) Print the lenght of PatientsList.
length(PatientsList)
#(b) Determine the number of patients with age over 50 using the lenght() function
test<- PatientsList == ">50"
test

length(test[test == TRUE])

BasicCharacteristics<- read.csv("ClinicalTrial.csv")
BasicCharacteristics



```







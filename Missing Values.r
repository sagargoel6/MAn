#Missing Values----

v1 = c(1,2,NA,NA,5) #NA is missing value
is.na(v1) #Check where are the missin g values in the array
mean(v1) #Gives error 
mean(v1, na.rm=T) #Compute mean of the array after removing (rm) missing values
na.omit(v1) #Omits missing Values and then print the array
anyNA(v1) #Checks if there is any missing value

#all
v1[is.na(v1)]=mean(v1, na.rm=T)  #Calculate the mean and then put it in the place of missing value
v1

#VIM----
#VIM Package helps handle missing values
#sleep preinstalled data frame to practice in missing value handling
library(VIM)
data(sleep, package='VIM')
head(sleep)
dim(sleep)
complete.cases(sleep) #puts true for rows which are complete i.e. without missing values
sleep[complete.cases(sleep), ] #Display complete rows
sleep[!complete.cases(sleep), ] #Display non complete rows
names(sleep)
sum(is.na(sleep$Dream)) #No. of missing values in the column Dream
sum(is.na(sleep$Dream))
mean(is.na(sleep$Dream)) #No. of rows with missing values / total no. of rows
12/62 #No. of missing values / total no. of rows
dim(sleep)

sum(!complete.cases(sleep)) #Total number of incomplete rows

mean(!complete.cases(sleep)) #Total number of incomplete rows / Total number of rows
20/62
sum(is.na(sleep))
colSums(is.na(sleep)) #Total Number of missing values in each column
rowSums(is.na(sleep)) #Total Number of missing values in each row

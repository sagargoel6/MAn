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

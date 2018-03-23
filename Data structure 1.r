#Vectors----
# 4 hyphens ('-') are given to make it a bookmark. 

(v1 = c('A', 'B', 'C')) #character vector
(v2 = c(1,2,3)) #numeric vector
(v3 = c(TRUE, FALSE, TRUE)) #logical vector
(v4 = 100:200) #sequence from 1-10
(v5 = seq(1,10,2)) #1-10 with an interval of 2 

v4; v5
v4[1:5] #print the first 5 values
v4[c(25,3)] # printing values present at the indice of the vector, here indice 25 doesnt exist
v4[-c(1,3,4)] #print except the values at position 1st, 2nd and 3rd
v4[v4>150] #all values greater than 150

v1[v1=='A'] #Print value if present
v1[v1=='L'] #Since, L is not present, hence showing character count = 0
v1[v1 %in% c('A','C')] #List whether A and C are there or not in V1
v1[v1 %in% c('A','L')] #List whether A and L are present or not and print only present value.
v7=c('A','L' )
v1[v1 %in% v7]
(v8=1:5)
(names(v8)=c('sagar','arpit','ankit','yash','keshav'))
v8[2]
v8
str(v8) #tells the structure of that objects
class(v8)
str(v1)

#Data Frame----

df=data.frame(rollno=c(1,2,3), name=c('Rohit', 'Lalit', 'Hitesh'), course=c('MBA', 'BBA', 'MCA'), dept=c('dept1', 'dept2', 'dept3'), marks=floor(runif(3,50,100)))
df #runif command prints random values (number of values, min value, max value)
df=fix(df) #Change data in a better and easy way if data is small
class(df)
ls() #lists the contents of the folder or the environment

rm(list=ls()) #Delete the contents of the environment
ls()
ls() #recreate data in R by compiling each line by control+enter

#list----

(mylist1 = list(1,df,v4)) #list can have multiple data types. 

#matrix----
#Matrix can only have one data type and only two dimensions

?matrix #Help for matrix command
(mymatrix=matrix(1:24, ncol=4)) #Numbers will be filled in column wise
(mymatrix1=matrix(1:24, ncol=4, byrow=TRUE)) #Numbers will be filled row wise

#array----
#array can have multiple dimensions
#dimension: dim = c(rows in each matrix, columns in each matrix, no. of matrices)

?array

(myarray = array(1:24, dim = c(4, 3, 2), dimnames = list(c('s1', 's2', 's3', 's4'), c('Sub1', 'Sub2', 'Sub3'), c('Dept1', 'Dept2'))))
myarray  

df=fix(df)

#Nominal, Ordinal, Interval, Ratio types of data

#Factors----
#Study factors

df$rollno
df$gender = c('M','M', 'F')
df$gender = factor(df$gender)
str(df)

df$grades = c('A', 'C', 'B')
df
str(df)
df$grades = factor(df$grades, ordered=T) #automatically selects order
df
df$grades
df$grades = factor(df$grades, ordered=T, labels=c('C', 'B', 'A')) #ordered specified
df$grades
str(df)
df

#Factors example----

sname=c('Anish', 'Sagar', 'Nihali', 'Bhavya', 'Amber', 'Sayantan')
gender=c('M', 'M', 'F', 'F', 'M', 'M')
course=c('CS', 'CS', 'ECE', 'IT', 'CS', 'CS')
grades=c('A', 'B', 'C', 'D', 'E', 'F')
marks=floor(runif(6,50,100))
df1=data.frame(sname, course, gender, grades, marks)
df1
str(df1)
df1=fix(df1)
df1$sname=as.character(df1$sname) #Since, we don't want it to be a factor
df1
str(df1)

df1$course=factor(df1$course) #Unordered factor, course
df1$course #Shows levels without order

df1$gender=factor(df1$gender, ordered=T) #Default ordering
df1$gender

df1$grades=factor(df1$grades, ordered=T, levels=c('B', 'D', 'A', 'E', 'C', 'F')) #Ordering specified
df1$grades

str(df1)
df1
str(df1)
str(df1)

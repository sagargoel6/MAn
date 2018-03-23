#Outliers----

marks = c(1:80, 100, 1000)
marks2 = c(1:80, 100)

summary(marks)
summary(marks2)

boxplot(marks2) #Box plot shows 1st quantile, median and 3rd quantile as a box
boxplot(marks) #the value 1000 disintegrates the box plot very much, hence, an outlier 
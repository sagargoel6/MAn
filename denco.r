#Denco Case----
#Reading csv file

denco = read.csv('denco.csv') #Directly reading the downloaded file
denco
 
denco2 = read.csv(file.choose()) #if not sure about the location of the file
denco2

denco == denco2 #To check whether the two files read are same. 
summary(denco) 
str(denco)
unique(denco$custname)

#Using gsheet----

library(gsheet)
url = 'https://docs.google.com/spreadsheets/d/1PWWoMqE5o3ChwJbpexeeYkW6p4BHL9hubVb1fkKSBgA/edit#gid=216113907'
denco3=as.data.frame(gsheet2tbl(url)) 
str(denco3)
denco3

#Analysis----
head(denco, 5) #Only shows first few rows, (name of the file, no. of rows you want to show)
names(denco) #Shows the names of the columns
tail(denco, 5) #Only shows last few rows 

str(denco)
summary(denco) #General info about each column depending upon the data types.
dim(denco) #Dimensions i.e. rows and columns
unique(denco$custname) #Prints the unique (number and names) customers in the data.
names(denco)
length(unique(denco$region)) #Number of unique regions
length(unique(denco$custname))

aggregate(denco$revenue, by=list(denco$custname), FUN=max) #Max revenue each unique customer gave
aggregate(denco$revenue, by=list(denco$custname), FUN=min) #Min revenue each unique customer gave

#Sum of Revenue for each unique customer
df1 = aggregate(denco$revenue, by=list(denco$custname), FUN=sum) #Total revenue each unique customer gave
str(df1)
head(df1)
df1 = df1[order(df1$x, decreasing=TRUE),] #Sorting the data frame by decreasing order of sum of revenue
head(df1, 5)
head(df1[order(df1$x, decreasing=TRUE), ], 5) #Another way of combining the above two lines

(df2=aggregate(revenue ~ custname + region, data = denco, FUN=sum)) #Printing revenue sum for each customer in different regions
head(df2[order(df2$revenue, decreasing=TRUE), ], 5)


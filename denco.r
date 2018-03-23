#Denco Case
#Reading csv file

denco = read.csv('denco.csv')
denco
 
denco2 = read.csv(file.choose()) #if not sure about the location of the file
denco2

denco == denco2 #To check whether the two files read are same. 
summary(denco) 
str(denco)
unique(denco$custname)


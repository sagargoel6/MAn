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

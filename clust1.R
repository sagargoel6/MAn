clust=read.csv('clust1.csv')
colnames(clust)
class(clust$Age)
?apply
apply(clust, 2, FUN=class) #We type 2 to apply in columns and 1 for rows
dim(clust)
str(clust)
library(amap)
?amap::Kmeans
k1<-amap::Kmeans(clust[,-c(1)], center=3, iter.max = 200, nstart = 1, method = c("euclidean"))
k1$centers
k1$size
k1$withinss #Intra Cluster distance
k1$cluster
data_clus_2 <- clust[k1$cluster == 2, ] #Reads in a file the rows went in cluster 2
data_clus_2$Cust_id
write.csv(data_clus_2[,1], file="./data/data_clus_2.csv") #Save the data of cluster 2 in a new csv file in the Data folder in the MAn project.
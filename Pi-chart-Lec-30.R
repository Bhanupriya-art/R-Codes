#it depicts the special chart that uses pie slices where each sector show the 
#relative size of data
#pie function used to create pie charts 

#piecharts
x<-c(23,56,20,63)
labels<-c("A","B","C","D")
pie(x,labels)

install.packages("plotrix")
library(plotrix)
x<-c(600,300,150,100,200)
pie3D(x,main="3D",labels=c("A","B","C","D","E"),col=c("Red","Orange","Yellow","Blue","Green"))
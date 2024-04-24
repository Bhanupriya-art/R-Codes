#heatmap
data<-as.matrix(mtcars)
heatmap(data)
heatmap(data,scale="column")
heatmap(data,Colv=NA,Rowv=NA,scale="column")
heatmap(data,Colv=NA,Rowv=NA,scale="column",col=cm.colors(256),xlab="variable",ylab="car")

ds<-data.frame(rnorm(10,5,1),rnorm(10,5,1))#rnorm create random values
ds
rn=c("A","B","C","D","E")
cn=c("F","G","H","I")
x<-as.matrix(ds)
heatmap(x,labRow = rn,labCol = cn,main="test heatmap")

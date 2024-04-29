A<-c(17,2,8,13,1,22)
B<-c("Jan","feb","mar","apr","may")

barplot(A,names.args = B, xlab="Months", ylab="Articles", col="green",
        main="Article chart")


colors=c("blue","green","red")
months<-c("jan","feb","mar","apr","may")
regions<-c("East","west","north")


values<-matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),
               nrow=3, ncol=5, byrow= TRUE)
values

#create bar chart
barplot(values,main = "total revenue",names.arg = months,xlab = "Months",ylab="revenue",
        col=colors)

barplot(values,main = "total revenue",names.arg = months,xlab = "Months",ylab="revenue",
        col=colors, beside=TRUE)

#add legend to chart
legend("topleft",regions, cex = 0.7, fill= colors)

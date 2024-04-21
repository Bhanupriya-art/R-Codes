#Plots
#Drawing a line chart in a R with the plot function
#A line chart can be created in base R with the plot function

x<-c(1,2,3,4,5)
y<-c(200,400,600,700,500)
plot(x,y,type="l")

plot(x,y,type="l",
     col="brown",#Color
     lwd=5)    #Line width

plot(x,y,type="s",main='type="s"')
plot(x,y,type="b",main='type="b"')
plot(x,y,type="o",main='type="o"')

#WE HAVE 6 TYPES OF LINE
plot(x,y,type="l",lwd=2,lty=1,main="lty=1") #line type and line width
plot(x,y,type="s",lwd=2,lty=2,main="lty=2")
plot(x,y,type="l",lwd=2,lty=3,main="lty=3")
plot(x,y,type="o",lwd=2,lty=4,main="lty=4")
plot(x,y,type="l",lwd=2,lty=5,main="lty=5")
plot(x,y,type="l",lwd=2,lty=6,main="lty=6")

plot(x,y,type="b",cex=3,pch=4,col="blue") #cex=size,pch=cross sign

plot(x,y,type="b",
     pch= LETTERS[1:5], #letter as symbol
     cex=2,             #size of the symbol
     col=1:5,
     xlim=c(0,6),
     ylim=c(150,750))

#SCATTER PLOT
#Used to compare variables

x<-c(45,12,78,23,89,128,45,46)
y<-c(78,225,48,51,95,65,34,78)
plot(x,y)

x<-c(45,12,78,23,89,128,45,46)
y<-c(78,225,48,51,95,65,34,78)
plot(x,y,main='Result',xlab="X-Label",ylab="Y-Label")

x1<-c(45,12,78,23,89,128,45,46)
y1<-c(78,225,48,51,95,65,34,78)
x2<-c(45,78,35,55,64,98,35,78)
y2<-c(32,78,54,98,65,32,54,24)
plot(x1,y1,main='Result',xlab="X-Label",ylab="Y-Label",col="skyblue",cex=2)
points(x2,y2,col="pink",cex=2)

data<-stcars[,c('wt','mpg')]
png(file="Scatterplot.jpg")
plot(x=data$wt,y=data$mpg,xlab="weight",ylab="Mil",
     xlim=c(2,5,5),ylim=c(15,30),main="weight v/sMil")
dev.off()

#LINE GRAPHS
v<-c(15,84,32,95,88)
plot(v,type="o")
plot(v,type="s",col="green",xlab="Month",ylab="Temperature")

w<-c(45,78,23,45,65,78)
x<-c(87.65,35,62,15,48)
plot(v,type="o",col="pink",xlab="Month",ylab="Temperature")

plot(v,type="o",col="red",xlab="Month",ylab="Temperature")
lines(w,type="o",col="blue")
lines(w,type="o",col="green")

#BAR PLOTS
temp<-c(45,89,23,15,65,24,57,68)
result<-barplot(temp)
result<-barplot(temp,main="Result")
result<-barplot(temp,main="Result",xlab="x-axis",ylab="y-axis",
                names.arg=c("sun","mon","tue","wed","fri","sat"),
                col="violet")

result<-barplot(temp)
result<-barplot(temp,main="Result")
result<-barplot(temp,main="Result",xlab="x-axis",ylab="y-axis",
                names.arg=c("sun","mon","tue","wed","fri","sat"),
                col="violet",density=10)

#STACKED BAR CHART

data<-matrix(c(654,354,896,354,159,354,654),nrow=2,ncol=4)
data
result<-barplot(data,main="Result",xlab="x-axis",ylab="y-axis",
                names.arg=c("sun","mon","tue","wed","fri","sat"),
                col="violet")


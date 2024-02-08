#list
a<-c(1,2,3,4,5)
a
b<-c(1+2i,2+2i,3+2i,4+2i,5+2i)
b
c<-c(1L,2L,3L,4L,5L)
c
d<-c(T,T,F,T,T)
d
x<-list(a,b,c,d)
x

a<-c(1,2,3,4)
b<-c("hello","hi")
c<-15L
D<-3+5i
e<-list(a,b,c,d)
e
e[2]
b[2]
e[[2]][2]
e[[2]][2]<-"bye"
e
e[3]
e[[4]]<-NULL
e[[4]]
e

a<-list(7,7,3.5,"hello")
b<-list("hi","x",3L,3.5)
#combine the list
x<-c(a,b)
x

sno=c(1:5)
name=c("veer","jai","ajay","rahul","rohit")
CGPA=c(6:10)

#naming the element in the list
list1=list("Rollno"=sno,"Student Name"=name,"CGPA"=CGPA)
class(list1)
list1[[3]]
class(list1[[3]])
class(list1)
typeof(list1)

#naming - 2nd method

list4<-list(c("aashi","kimmy","gargi"),c(100,200,300),list("R","Java","Python"))
list4
names(list4)<-c("names","marks","subject")
list4

#access 
list4["marks"]
list4["subject"]
list4[2]
l<-list(a=1,b=2,c=3,d=4,e=5,f=6,g=7,h=8,i=9,j=10)
l
#accessing the element of the list
l[3]
l$c
l$j
l$a

list1

#add a new element to the list
list1[["Gender"]]<-c("F","M","M","M","M")
list1

#removing the element
list1[["Gender"]]<-NULL
list1

list1[["CGPA"]]<-NULL
list1

#accessing the following element

list1$ StudentName
list1[2]
list[[2]]
list1[[2]][5]
list1[[2]][0]
l1=list1[[2]][-5]
l1
l1=list1[[2]][-3]
l1

#for getting values from user
p<-as.integer(readline(prompt="enter integer value:")) #prompt is used for popup
q<-as.complex(readline(prompt="enter complex value:"))
r<-as.character(readline(prompt="enter character value:"))
s<-as.logical(readline(prompt="enter logical value:"))
b<-list("Rollno"=p,"marks"=q,"value"=r,"pass"=s)
b
class(b)

#adding new element using readline function
newelement=readline(prompt="enter string value:")
b["addition"]=newelement
b

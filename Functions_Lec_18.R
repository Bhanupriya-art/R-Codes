#FUNCTION
#where arguments is a set of symbol names(and,optionally, default values) that will 
#be defined whithin the body of the function

#printing the power of two of 2, of all no. from 1 to 5

name<-function(){
  for (i in 1:5){
    print(i^2)
  }
}
name()

#WAP to find the exponential of number and call the function by using arguments
name<-function(a,b){
    paste(a^b)
  
}
name(2,4)


#find out addition of two no.
sum<-function(a,b){
  paste(a+b)
}
a<-as.integer(readline())
b<-as.integer(readline())
sum(a,b)


#find out the product
product<-function(a,b){
  paste("The product of given no. is: ",a*b)
}
a<-as.integer(readline())
b<-as.integer(readline())
product(a,b)

sub<-function(a=20,b){
  paste(a-b)
}
sub(4,5)#in this case the output will be -1 not 15 they replace the default value


fun1<-function(a,b){
  print (a)
  print(a^2)
  print(b)
}
fun1(3,4)
fun1(8)

fun1<-function(a,b){
  print(a/b)
}
fun1(b=10,20)


#WAP to multiply a variable by a variable using function without braces
mul<-function(a,b)
  print (a*b)
mul(2,4)

#wap to find the area of circle using function
area<-function(pi=3.14,r){
  paste("the area of circle is: ",pi*r*r)
}
area(pi,7)

#WAP to display the multiplication table by using function
table<-function(a){
  for (i in  1:10){
    m<-a*i
    cat(a,"*",i,"=",m,"\n")
  }
}
table(2)



#ANONYMOUS FUNCTION
#which have no name, it is use for writing only one line code
(function(pi=3.14,r)pi*r*r)(r=5)


r=5
area=function(pi=3.14,r=10){
  a=pi*r*r
  rm(r)
  b=pi*r*r
  print ("area of circle before removing r")
  print(a)
  print ("area of circle after removing r")
  print(b)
}
area()

#use return function 
power<-function(a,b){
  return(a^b)
}
power(2,4)


#Nested function
add<-function(a,b){
  return(a+b)
}
print(add(add(1,2),add(3,4)))

#wap to print a square pattern
square<-function(n){
  for(i in 1:n){
    for (j in 1:n){
      cat("*")
    }
    cat("\n")
  }
}
square(5)
  
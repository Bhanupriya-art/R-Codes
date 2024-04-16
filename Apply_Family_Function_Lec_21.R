#Apply Family of Function
#Function present int he apply family are the ones that allows us to manipulate
#Data frames,arrays,matrices,vectors,these functions are alternative of loops
#however,are the most efficient than loops as function are the faster at the execution level
#these function reduce the need for explicitly creating a loop in R

#Different types of apply function
#1-the apply functon
#2-the lappy()
#3-the sappy()
#4-the tappy()
#5-the mappy()

#1 Apply()
#Syntax apply(x,margin,function)
#x:determines the input array including matrix
#margin:If margin is 1 function is applied accross row.
#if the margin is 2 it is applied accross the column
#function:determines the function that is to be applied on input data

mat<-matrix(c(1,2,3,4),nrow=2,ncol=3)
mat
apply(mat,1,sum)
apply(mat,2,sum)
apply(mat,2,mean)

#2 lappy:it takes list as an argument
# apply function to each element oft he list by looping
# Syntax:- lappy(x,fun)
# x:determine the input vector n of an object
# fun:determines the function that is to be applied to input data

# Create sample data
names<-c("a","b","c","d","e")
names
print("data after lapply():")
lapply(names,toupper)


# Using Pre-defined function in lapply()
a <- list(A=c(8,9,7,5), B=data.frame(z=1:5,y=c(5,1,0,2,3)))
a
lapply(a,sum)

# Using Our own function in lapply()
a <- 1 : 3
fun <- function(x){
  x^2
}
lapply(a,fun)

#3 sapply() function: It is same as the lapply() with the only difference being the type
# of return object. if the result is a list with each element of length 1 then vector will
# be returned if the result is a list with more than 1 element, (but of same length vector),
# matrix will be returned if none of the above algorithm is applicable, list will be returned
# Syntax:- sapply(x,fun)
# x: determines the input vector or an object.
# fun: determines the function that is to be applied to input data


# Return type is Vector
sapply(1:4,sqrt)

# Return type is list
x <- list(A=1:5,B=6:20,C=1)
sapply(x, length)
x <- list(A=1:5,B=6:10,C=11:15)
sapply(x, length)

#4 tapply() function: it helps us to create a subset of a vector and then apply sum 
# functions to each of these subsets. In such cases where we want to break the data 
# into different groups and apply specific function in each of the subgroup
# Syntax: tapply(x,index,fun)
# x: determines the input vector or an object.
# index: determines the factor vectors that helps us distinguish the data.
# fun: determines the function that is to be applied to input data


res <- data.frame(id=c(1,2,3,4), name=c("john","alex","aryan","ani"), 
                  marks=c(10,20,30,40),section=c('A','B','A','B'))
res
res[4] #or res$section
res$section
marks<-res$marks
marks
mean1 <- factor((res$section),labels = c('Section A','Section B'))
mean1
tapply(marks,mean1,mean)


#5 mapply() function: it applies the function parallel to given set of arguments
# it applies the same function to each argument passed
mapply(rep,1:4,4:1)

mapply(rep,times=1:4,x=4:1)

mapply(rep,times=1:4, MoreArgs = list(x = 42))

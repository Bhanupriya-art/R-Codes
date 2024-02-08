readline("Enter your name: ")

z <- readline("Enter your name: ")
class(z)

a <- as.numeric(readline("Enter a number: "))
class(a)

ls() #list all variables present in env.

rm(a) #remove variables from environment

ls()


# Arithmetic Operators

a <- 7.5
b <- 2
print(a) # use to print the value
a # also use to print value

a + b #addition

a - b #subtraction

a * b #multiplication

a / b #division

a ^ b #exponent or pow

a %% b #for finding remainder

a %/% b #for finding quotient


#Vectors:-
# 1, 2, 3, 4 - numeric
# boolean - T, F
# character - "a,"b"


# Creating vectors using c function(Vectors have similar data types)
v <- c(1,2,3,4)  
v
class(v)


# Performing Operation on the vectors
a1 <- c(4,7,8,9)
b1 <- c(8,5,9,7)
#Addition
a1 + b1
#Subtraction
a1 - b1
#Multiplication
a1 * b1
#Division
a1 / b1
#Pow or Exponent
a1 ^ b1
#Remainder
a1 %% b1
#Quotient
a1 %/% b1


# Relational Operators(Give output in the way of True or False)
a <- 7.5
b <- 8

#less than
a < b
#greater than
a > b
#less than equal to
a <= b
#greater than equal to
a >= b
#not equal to
a != b

# performing relational operators on vectors
v1 <- c(4,7,8,9)
v2 <- c(8,5,9,7) 

#less than
v1 < v2
#greater than
v1 > v2
#less than equal to
v1 <= v2
#greater than equal to
v1 >= v2
#not equal to
v1 != v2


# Logical Operators
a2 <- 0 # representing False
b2 <- 2 # Any number other than 0 is true

# logical AND
a2 & b2
# logical OR
a2 | b2
# logical NOT
!a2 
!b2
# Operand Wise AND
a2 && b2
# Operand Wise OR
a2 || b2

# performing logical operators on vectors
v3 <- c(TRUE,TRUE,FALSE,FALSE)
v4 <- c(TRUE,FALSE,TRUE,FALSE)

# logical AND
v3 & v4
# logical OR
v3 | v4
# logical NOT
!v3 
!v4
# The operator && and || will not work as it has been removed from New Feature of R Studio
# Operand Wise AND
v3 && v4
# Operand Wise OR
v3 || v4

# Assignment Operators

# left Operators
a3 <- 7 
a3
# right Operators
5 -> b3
b3
#equals to
c = 9
c
# Double left
d <<- 6
d
# Double right
3 ->> w
w

# Miscellaneous operators

# : this operator is used to print the series for the given number's(Only work for number's)
56 : 67
b2 : c
 # It works because the variable have some value stored in it

# %in% operator(used to find if a number is present in the vectors or not)
a4 <- c(24,64,98)
b4 <- 26
b4 %in% a4 # One should be vector and one should be variable

# Matrix 
matrix(1:9, nrow=3, ncol=3) #column wise filling of matrix

matrix(1:9, nrow=3) #ncol is optional

matrix(1:9, nrow=3, ncol=3,byrow=TRUE) #Row wise filling

matrix(c(1,2,3,4)) # creating matrix by using vector in row wise
matrix(c(1,2,3,4),2,2) # creating dimension of matrix 2 : 2 in column wise
matrix(c(1,2,3,4),2,2,byrow = TRUE) # creating dimension of matrix 2 : 2 in row wise

M <- matrix(c(1,2,3,4),2,2)
M
# transpose of the matrix using t function
t(M)

# %*% multiplication of matrix and transpose of matrix
M %*% t(M)











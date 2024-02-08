# Atomic vector - character,complex,numeric,logical
# create a vector - length 5
# type - complex,character,integer,numeric,logical

print("abc")
print(8+6i)
print(5)
print(T)

c(8+6i,9+7i,3+8i,5+1i,4+9i)
c("a","b","c","d","e")
c(1L,2L,3L,4L,5L)
c(9,8,7,6,5)
c(T,T,F,T,F)



char_vec <- c("ram"=12, "shyam"=32, "mohan"=22)
length(char_vec)
char_vec[2]

subject_name = c("John","Jane","Smith","Jia")
subject_name[3]
subject_name[2]
subject_name[c(2,3)]
subject_name[c(2:4)]

flu_Status <- c(F,F,T,F)
flu_Status

temperature <- c(98.1,98.6,101.4,97.2)
temperature[4]
temperature[c(-2,-4)]
temperature[c(-2,-3)]
temperature[c(-1,-2)]
temperature[c(-2,4)]
temperature[c(2:4)]

# Passing logical values to access the elements
temperature
temperature[c(T,T,F,F)] # True Values can be retrieved for those values which we are making true
temperature[c(0,0,1,1)] # repeating 1st element two times
temperature[c(1,1,2,3)] # prints index 1 two times, index 2 one time, index 3 one time
temperature[c(0,0,2,2)] # prints index 2 two times
temperature[c(3,3,3,3)] # prints index 3 four times
temperature[c(1,1,3,3)] # prints 1st two times and 3rd two times
temperature[c(2,2)] # prints index 2 two times


s <- c('apple','red',5,T) # If there is any one character then it will convert all other into character
s
class(s)

# Performing Operation on the vectors
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,0,8,1,2)
#Addition
v1 + v2
#Subtraction
v1 - v2
#Multiplication
v1 * v2
#Division
v1 / v2
#Pow or Exponent
v1 ^ v2
v1 ** v2
#Remainder
v1 %% v2
#Quotient
v1 %/% v2

# vector element recycling
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11)

v1 + v2
v1 - v2
v1 * v2
v1 / v2
v1 ^ v2
v1 ** v2
v1 %% v2
v1 %/% v2


# Sorting of vectors 
v <- c(56,7,34,98,2,54,3,19)
sort(v) # Ascending
sort(v, decreasing = TRUE) # Descending Order


# Creating a vectors od different colors and sorting it
v <- c("red","blue","violet","green","black")
sort(v) # Ascending
sort(v, decreasing = TRUE) # Descending Order


# Repeating Elements in the vector
a <- rep(c(1,2,3), each = 3) # each:- each element is repeated 3 times
a
a <- rep(c(1,2,3), times = 2) # time:- it is used for repeating the string 2 times
a


a <- rep(c(1,2,3), c(5,3,4)) # repeating each element for a particular value of times
a


# scan() use to take multiple inputs from teh user
data1 <- scan() # for numeric only
data1

# For inputting multiple character value
data2 <- scan(what = 'character')
data2

ls()
.name1234 <- 1
.name1234
ls(all.names = TRUE) # all variables which are starting from dot are shown
rm(a)
ls()
rm(list = ls()) # To remove all variables from the environment excluding dot variables
ls(all.names = TRUE)
rm(list = ls(all.names = TRUE)) # To remove hidden or dot variables
ls(all.names = TRUE)









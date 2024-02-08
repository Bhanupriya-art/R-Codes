# Data Structure in R- vectors, matrix, arrays, list, dataframes
#vectors - it is a structure that can contain one or more values of
# a single type, such as character, number or integer.
# vectors are used to represent only 1-D data, such as set of digits
#vectors can be implemented in two forms - atomic vectors, list vectors are sequence
# of elements which shares the same data types.
# vectors supports all data types
# elements of vectors are known as components
# length() - no.of elements in a vector
# Atomic vector - single value
# list vectors - using c function more than 1 value


# Atomic vector of type character
print("abc")

# Atomic vector of type complex
print(56+8i)

# Atomic vector of type integer
print(45L)

# Atomic vector of type numeric
print(12345)

# Atomic vector of type logical
print(TRUE)
print(FALSE)



# List vector of type numeric
a <- c(1,2,3,4,5)
length(a) # use to find length of a vector


# List vector of type character
b <- c('hi', 'hello', 'bye')
length(b)

# ASCII character accessing
charToRaw("hi") # ASCII character to hexadecimal values

charToRaw("hello")

charToRaw("HELLO") # Different hexadecimal values are printed for small or capital alphabets


# 2nd Method to create vector is:- sequence function
56 : 65


v <- c(10,20,30,50,60)
# Accessing values (elements) in vector
v[2] # Index starts from 1
v[-2] # delete element at given index (Temporary deletion)
v
v[-1]


v[c(2,-2)] # Negative index cannot be mixed with the positive index

v[2.3,5.6] # Error:- Only real numbers 

v[c(2.3,5.6)] # It changes into real no like 2.3 into 2 and 5.6 into 5


# Modification of Elements
v
v[2] <- 80
v

y <- 2:-2 # It will create vector from 2 to -2
y


# Modifications by using Operators
y[y<0]<- 5 # It will change the values of the numbers which are less than 0 (Permanent change)
y


# Subset of your list(vector)
y
subset(y,y>1) # Uses subset function 1st we type the vector then the condition(Temporary change)
y


# Truncate The list
y<-y[1:4] # It will make the list from index 1 to 4 and will remove last element(permanent change)
y


y <- c(3,3,5,7,10,12,15,20)
length(y)

y[y > 12 | y< 5] # It will print the values which is greater than 12 and smaller than 5

y[y>5 & y<12] # it will print the values which are less than 12 and greater than 5


# Largest Element in the vector y
max(y)
which.max(y) # Gives the index of the maximum element

# Smallest Element in vector y
min(y)
which.min(y) # Gives the index of the minimum element(It does not give the index of duplicate elements)

# Another method for finding location of max and min element is
which(y == max(y))
which(y == min(y)) # (It gives the index of duplicate elements)


data1 <- c(3,5,7,5,3,2,6,8,5,6,9)
data1
length(data1)
data1==6 # Extracting location of the element 6(It will give true and false)
which(data1==6) # It will give the index

data1 > 6
which(data1 > 6)
data1[data1>7]


y <- c(8,6,7,5,7)
y[3]

# Assigning NULL value to this y vector
y <- NULL
y
y[3]



y <- 12 : 17
y
length(y)


# Add 18,19,20 in y vector
y1 <- c(y, 18,19,20)
y
y1 # Added 3 new values to the vector
length(y1)


y <- 6.6 : 12.6 # Sequence of numbers using decimal lower and upper bounds
y

y <- 6.6 : 12.5 # Print till 11.6 
y

y <- 3.8:11.4 # Print till 10.8
y


# 3rd Method to create vectors - seq()
seq(1:6)

sq <- seq(1,6) # we can use comma or colon
sq

sq <- seq(1,6, by = .2) # for gap between numbers(changing the separator)
sq

sq <- seq(1,6, by = 2) # printing odd numbers
sq

sq <- seq(0,10, by = 2) # printing even numbers
sq

# Separator is decided by the length.out
sq <- seq(1,6, length.out = 3) # we are changing the length from 6 to 3
sq

sq <- seq(1,10, length.out = 3) # we are changing the length from 10 to 3
sq

sq <- seq(1,10, length.out = 5) # we are changing the length from 10 to 5
sq

sq <- seq(1,10, length.out = 3)
sq
sq <- seq(1,20, length.out = 5)
sq


# Different Vectors

# numeric vectors
a <- c(1,2,3,4,5)
a
# character vectors
b <- c('hi', 'hello', 'bye','wow','nice')
b
# integer vectors
c <- c(1L,2L,3L,4L,5L)
c
# logical vectors
d <- c(T,T,F,T,F)
d
























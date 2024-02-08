# Arrays - Collection of elements of same data type, it can be of any dimension like 2D
# 3D. This is the difference between arrays and vectors

vector1 <- c(5,5,3)
vector2 <- c(1,2,10,20,3,4)

array1 <- array(c(vector1,vector2)) # create an array
array1
class(array1)

# Creating array - Dimension 4 * 2, row = 4, col = 2
array1 <- array(c(vector1,vector2), dim = c(4,2)) 
array1


# Creating array - Dimension 4 * 3, row = 4, col = 3
array1 <- array(c(vector1,vector2), dim = c(4,3)) 
array1

# Creating array - Dimension 4 * 4, row = 4, col = 4
vector1 <- c(7,8,3)
vector2 <- c(20,30,1,5,6,7,2,4)
array1 <- array(c(vector1,vector2), dim = c(4,4)) 
array1


# Array using seq - 1 to 24
a <- array(data = 1 : 24, dim = c(3,4,2)) # it is creating 2 arrays of same dimension 
a

# assign the names to rows and columns
vector1
vector2
names1 <- c("marks1","marks2","marks3")
names2 <- c("value1","value2","value3","value4")
array1 <- array(c(vector1,vector2), dim = c(4,3), dimnames = list(names2,names1))
array1

vector3 <- c(1,2,3)
vector4 <- c(4,5,6,7,8)
name1 <- c("row1","row2","row3","row4")
name2 <- c("col1","col2","col3","col4","col5")
array2 <- array(c(vector3,vector4), dim= c(4,5), dimnames = list(name1,name2))
array2











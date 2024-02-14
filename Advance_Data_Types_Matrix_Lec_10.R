# Matrix -> consisting of rows and columns
m <- matrix(1:12, nrow = 3, ncol = 4) # Arranged in column wise by default
m
class(m)
m <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12), nrow = 3, ncol = 2) # Giving warning:- data length differs from size of matrix: [12 != 3 x 2]
m # But still it will create the matrix


# Shifting the number of elements - row wise
m <- matrix(1:12, nrow = 3, ncol = 4, byrow = TRUE)  
m

attributes(m) # This gives 3 4 which are dimension of matrix m
dim(m) # This also gives 3 4 which are dimension of matrix m

m[3] # This gives element at position 3,1
m[3,3] # This gives element at position 3,3
m[1:2,1:2] # This prints rows from 1 to 2 and columns from 1 to 2
m[1:2,] # This prints rows from 1 to 2 and all the columns 
m[3:4] # The 3rd and 4th element, If you separate comma then it will consider rows and cols
m[3:6]
m[,3:4]  # This prints columns 3 & 4
m[1] # Accessing first element
m[1] <- 1000 # Modifying the element at position 1
m
m[1:2,1:2] <- matrix(c(1001:1004), nrow = 2, ncol = 2) # Changes the value from row1&2 to col 1&2
m

m[1:2,1:2] <- c(1001:1004) # Another way of changing the values
m

x <- matrix(c(1:9),3,3)
x

x <- matrix(c(1:9),3,3, byrow=TRUE)
x
class(x)

x <- matrix(c(1:9),nrow = 1) # Created a matrix of a dim 1 * 9
x

x <- matrix(c(1:9),ncol = 1) # Created a matrix of a dim 9 * 1
x
class(x) # two data types matrix and array

# Assigning names to the rows and columns to the matrix
Rownames <- c("r1","r2","r3","r4")
colnames <- c("c1","c2","c3")
Mat1 <- matrix(c(3:14),nrow = 4, ncol = 3, byrow = TRUE, dimnames = list(Rownames,colnames))
Mat1

attributes(Mat1)
dim(Mat1) <- NULL # Assigning null to dimension of mat1 matrix
Mat1

rbind(Mat1,c(15,16,17)) # Adding 3 more values in the row of matrix in a temporary manner
Mat1 # Original matrix displayed
cbind(Mat1,c(15,16,17,18)) # Adding 4 more values in the column of matrix in a temporary manner
Mat1 # Original matrix displayed


# Consider Two matrix of 2*3
matrix1 <- matrix(c(1,3,5,10,6,9), nrow = 2)
matrix1
matrix2 <- matrix(c(10,20,4,5,3,7), nrow = 2)
matrix2

addofmatrix <- matrix1 + matrix2
addofmatrix
subofmatrix <- matrix1 - matrix2
subofmatrix
divofmatrix <- matrix1 / matrix2
divofmatrix
mulofmatrix <- matrix1 * matrix2
mulofmatrix








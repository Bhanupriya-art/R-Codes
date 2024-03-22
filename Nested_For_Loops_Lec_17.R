# Nested For Loops

# Program - 1 Take two seq-1,2,3 if adding a number from both seq is divisble by 2.
# print those numbers

seq1 <- c(1,2,3)
seq2 <- c(1,2,3)
for(i in seq1){
  for(j in seq2){
    if((i+j) %% 2 == 0){
      print(paste(i,j))
    }
  }
}

# Program - 2 Write a program to count even numbers in the following vector by using for loop
vect1 <- c(2,5,3,9,8,11,6)
count = 0
for(i in vect1){
  if(i %% 2 == 0){
    count= count + 1
  }
}
print(count)

# Program - 3 Write a program to find factorial of a number
fact = 1
n <- as.integer(readline(prompt = "Enter a Number: "))
for(i in 1:n){
  fact = fact * i
}
cat("Factorial of",n,"is",fact)

# Program - 4 Write a program to create a matrix of dimension 3x2 where all elements are 0
matrix_zero <- matrix(0, nrow = 3, ncol = 2)
print(matrix_zero)

# Loop through rows and columns to populate the matrix
for(i in 1:nrow(matrix_zero)){
  for(j in 1:ncol(matrix_zero)){
    matrix_zero[i,j] <- i * j
  }
}
print(matrix_zero)

# Program - 5 Write a program to display multiplication table using for loop
n <- as.integer(readline(prompt = "Enter a Number: "))
for(i in 1:10){
  print(paste(n,"X",i,"=",n*i))
}

# Program - 6 Pattern program
n <- as.integer(readline(prompt = "Enter a Number: "))
for(i in 1:n){
  for(j in 1:i){
    cat("* ")
  }
  cat("\n")
}

# Program - 7 Creating a matrix of 3x3 and adding all the elements
vect1 <- c(1:9)
matrix_result <- matrix(vect1,nrow = 3, ncol = 3,byrow = TRUE)
print(matrix_result)
totalsum <- 0
for(i in 1:nrow(matrix_result)){
  for(j in 1:ncol(matrix_result)){
    totalsum = totalsum + matrix_result[i,j]
  }
}
print(totalsum)

# Program - 8 Take two lists from 1 to 5 print the sum of number1 and number2
for(number1 in 1:5){
  for(number2 in 1:5){
    print(paste(number1,"+",number2,"=",number1+number2))
  }
}


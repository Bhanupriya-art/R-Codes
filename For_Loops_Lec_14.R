# For Loops - It is use to iterate over the elements of a list,
# data frame, vector, matrix, or any other

# Program - 1 Iterating over vectors
vect1 <- c(10,20,3,4,5)
for(i in vect1){
  print(i)
}

# Program - 2 Iterating over Letters
vect <- LETTERS[1:4] # LETTERS- it is used for numbering of alphabets
for(i in vect){
  print(i)
}

# Program - 3 Counting the even numbers
num <- c(1,2,3,10,20)
count = 0
for(i in num){
  if(i %% 2 == 0){
    count = count + 1
  }
}
print(count)

# Program - 4 Counting the odd numbers
num <- c(45,67,23,98,65)
count = 0
for(i in num){
  if(i %% 2 != 0){
    count = count + 1
  }
}
print(count)

# Program - 5 finding the exponential of no's 
for(i in 1:4){
  print(i^2)
}

# Program - 6 giving values in for loop only
for(i in c(-8,9,11,45)){
  print(i)
}

# Program - 7 For loop with a break statement
num <- c(1,2,3,10,20)
for(i in num){
  if(i == 10){
    break;
  }
  print(i)
}

# Program - 8 For loop with a next statement
num <- c(1,2,3,10,20)
for(i in num){
  if(i == 10){
    next;
  }
  print(i)
}

# Program - 9 For loops using separators
for(i in seq(from=5,to=25,by=5)){
  print(i)
}
for(i in seq(from=5,to=25,by=10)){
  print(i)
}
for(i in seq(from=45,to=60,by=3)){
  print(i)
}

# Program - 10 Printing in single line
for(i in seq(from=5,to=25,by=5)) print(i)

# Program - 11 - Printing the last value
i <- 1
for(i in seq(from=5,to=25,by=5)) i
i

# Program - 12 Writing a program to find the sum of square n natural numbers where n is 
# The input from the user

n <- as.numeric(readline(prompt = "Enter the Value of n: "))
sum = 0
for(i in 1:n){
  sum = sum + i;
}
print(n*n)

# Program - 13 Writing a program to input the size of array from user as well as elements 
# of array from user
arrays <- as.numeric(readline(prompt = "Enter the Size of array: "))
for(i in 1:arrays){
  arrays[i] <- as.numeric(readline(prompt = "Elements of arrays: "))
}
print(arrays)



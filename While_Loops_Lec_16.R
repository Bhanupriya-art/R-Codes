# While Loop

# Program - 1
n <- as.integer(readline())
sum = 0
while(n<=10){
  sum = sum + n
  n=n+1
}
print(sum)

# Program - 2 Writing a program to initialize a vector of length 2 and use a variable count
# and initialize it as 2 and print content of vctor 6 times
v <- c("hello","loop")
count <- 2
while(count <= 7){
  print(v)
  count = count + 1
}


# Program - 3 Writing a progranm to print countdown from n to 0
n <- as.numeric(readline(prompt = "Enter a number: "))
cat("Numbers from ",n, "to 0 are: ")
while(n >= 0){
  print(n)
  n = n - 1
}

# Program - 4 Writing a program to display a sequence starting from 1 to 10 discarding 6
n = 1
while(n <= 10){
  print(n)
  n = n + 1
  if(n == 6){
    next
  }
}

# Program - 5 Writing a program to print even or odd using while loop
x <- 1
while(x <= 10){
  if(x %% 2 == 0){
    print(paste(x, " is even"))
  }else{
    print(paste(x, " is odd"))
  }
  x = x + 1
}

# Program - 6 Writing a program to display odd numbers from 1 to 10 using while and 
# implementing next keyword in this while
x <- 1
while(x <= 10){
  if(x %% 2 != 0){
    print(x)
  }
  x = x + 1
  if(x == 5){
    next
  }
}

# Program - 7 Writing a program to display even numbers from 1 to 10 using while and 
# implementing next keyword in this while
x <- 1
while(x <= 10){
  if(x %% 2 == 0){
    print(x)
  }
  x = x + 1
  if(x == 6){
    next
  }
}

# Program - 8 Creation of dataframe for handling the data of students
n <- as.integer(readline(prompt = "Enter No. of Students: "))
df <- data.frame(S.NO=c(),NAME=c(),ROLL.NO=c(),GENDER=c(),CGPA=c())
count = 1
while(count != n+1){
  df.name <- readline("Name: ")
  df.rollno <- as.integer(readline("Roll No: "))
  df.gender <- readline("Gender: ")
  df.cgpa <- as.integer(readline("CGPA: "))
  df <- rbind(df, data.frame(S.NO=c(count),NAME=c(df.name),ROLL.NO=c(df.rollno),GENDER=c(df.gender),CGPA=c(df.cgpa)))
  count = count + 1
}
print(df)

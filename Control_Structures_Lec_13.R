# Control Structures - if, if-else, if-else ladder


# Program - 1 checking x is an integer
x <- 30L
if(is.integer(x)){
  print("x is integer")
}

# Program - 2 checking whether number is +ve or -ve 
x <- as.integer(readline(prompt = "Enter the number: "))
if(x>0){
  print("Number is positive")
} else{
  print("Number is negative")
}

# Program - 3 checking x is an integer or not 
x <- 30
if(is.integer(x)){
  print("x is integer")
} else{
  print("x is not an integer")
}

# Program - 4 checking number is present in the list of element or not
vect1 <- c(10,20,30)
if(2%in%vect1){
  print("Yes, value is present")
}else{
  print("No, value not present")
}

# Program - 5 Creating a program to check whether the number is even of odd
num <- as.integer(readline(prompt = "Enter the number: "))
if(num %% 2 == 0){
  print("Number is even")
} else{
  print("Number is odd")
}

# Program - 6 Checking whether given value is less than or greater than 5
num <- as.integer(readline(prompt = "Enter the number: "))
if(num > 5){
  print(paste(num, "is greater than 5"))
} else{
  print(paste(num, "is not greater than 5"))
}

# Program - 7  If-else checking number is zero, positive or negative
a <- as.numeric(readline(prompt = "Enter the number: "))
if(a == 0){
  print(paste("Number A is zero"))
}else if(a > 0){
  print(paste(a, "is a positive number"))
}else{
  print(paste(a, "is a negative number"))
} 

# Program - 8 check even or odd in case of a vector using if-else
vect1 <- c(10,2,14,5,9)
ifelse(vect1 %% 2 == 0,"Even","odd")

# Program - 9 Taking a vector of Length 10. Check whether the number divisible by 3 or not
vect2 <- c(1,2,3,4,5,6,7,8,9,10)
ifelse(vect2 %% 3 == 0, "Divisible by 3","Not Divisible by 3")

# Program - 10  Nested-If-else checking number is zero, positive or negative
a <- as.numeric(readline(prompt = "Enter the number: "))
if(a == 0){
  print(paste("A is zero"))
}else{
  if(a > 0){
    print(paste("A is a positive number"))
  }
  else{
    print(paste("A is a negative number"))
  }
}

# Program - 11 Checking it's Monday, Tuesday Or Wednesday
a <- as.numeric(readline(prompt = "Enter the number: "))
if(a == 1){
  print(paste("Monday"))
}else if(a == 2){
  print(paste("Tuesday"))
}else if(a == 3){
  print(paste("Wednesday"))
}else{
  print(paste("please choose the number between 1, 2 and 3"))
}

# Program - 12 Take input from user and if the number is greater than 0 - +ve number
# if-else print - number is positive even, else - positive odd
# -ve number = if-else print - number is negative even, else- negative odd

num <- as.numeric(readline(prompt = "Enter the number: "))
if(num > 0){
  if(num %% 2 == 0){
    print(paste("Number is positive even"))
  }else{
    print(paste("Number is positive odd"))
  }
}else{
  if(num %% 2 == 0){
    print(paste("Number is negative even"))
  }else{
    print(paste("Number is negative odd"))
  }
}

# Program - 13 if-else in single line
if(TRUE) "This statement is true" else "This statement is false"
if(FALSE) "This statement is true" else "This statement is false"

# Program - 14 Number divisible by 5 in single line
num <- as.numeric(readline(prompt = "Enter the number: "))
if(num %% 5 == 0) "Number is divisible by 5" else "Number not divisible by 5"

# Program - 15
x <- as.numeric(readline(prompt = "Enter the number: "))
if(is(x, "numeric")) x/2 else print("x is not numeric")

# Program - 16
a <- c("a","a","a","a","a")
b <- c("b","b","b","b","b")
ifelse(c(T,F,T,F,T),a,b)













 

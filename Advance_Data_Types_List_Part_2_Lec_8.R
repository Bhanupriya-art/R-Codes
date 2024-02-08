# Input from user
p <- as.complex(readline("Enter a complex number for p: "))
q <- as.integer(readline("Enter an integer for q: "))
r <- as.logical(readline("Enter a logical value for r (TRUE/FALSE): "))
s <- readline("Enter a character for s: ")

# Create a list
new_list <- list(p, q, r, s)

# Display the final list
new_list

# Create the first list from 5 to 20
list_1 <- list(5:20)

# Create the second list from 12 to 25
list_2 <- list(12:25)

# Printing the lists in single line
list_1; list_2

class(list_1)
class(list_2)

new_list <- unlist(list_1) # Converting List into a integer vector
class(new_list)

new_list1 <- unlist(list_2)  # Converting List into a integer vector
class(new_list1)

# Creating list of character datatype
li <- list("a","b","c","d","e")
li
class(li)
lis <- unlist(li)
class(lis)

example.list <- list(a=1,b=2,c=3)
example.list
a+b+c # Error: non-numeric argument to binary operator
example.list(a+b+c) # Error: xample.list(a + b + c) : could not find function "example.list"
with(example.list,a+b+c) # It adds all the element in the list
with(example.list,a-b-c) # It subtracts all the element in the list
with(example.list,a*b*c) # It multiplies all the element in the list

# Printing the values of a,b and c and doing sum function
cat("Value of a, b and c are:",example.list$a, example.list$b, example.list$c, "\n")
cat("Sum of a, b and c are:",with(example.list,a+b+c), "\n")
cat("Difference of a, b and c are:",with(example.list,a-b-c), "\n")
cat("Multiplication of a, b and c are:",with(example.list,a*b*c), "\n")


# within function is just printing all the variables in it
within(example.list,e <- a+b+c)

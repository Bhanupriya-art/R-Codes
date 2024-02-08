getwd() #getting the current working directory

#for a particular program use curly brackets

{
var <- "Hello World!"
print(var)
class(var)
}

#logical R Objects(data type)
l <- T # or TRUE
print(l)
class(l) #checking data type of variable

#numeric R Objects(data type)
N <- 23.5
print(N)
class(N)

#integer R Objects(data type)
i <- 2L #L is used for integer representation otherwise it is numeric
print(i)
class(i)

#complex R Objects(data type)
c <- 8 + 6i
print(c)
class(c)

#Character R Objects(data type)
ch <- "good" #can use single or double quote
print(ch)
class(ch)

#variable declaration
va.r2nam_e <- 6.  #valid
print(va.r2nam_e)

var.nam#e <- 7 #invalid
      
var%name <- 9 #invalid

var/name <- 7 #invalid

_varname <- 5 #invalid

.varname <- 6 #valid

.2varname <- 5 #invalid

.var.name <- 4 #valid

#Variable Assignment
z <- 5
6 -> x
a = 8

#cat function program 1
{
a <- 8
b = 5
a + b  -> c
print(c)
print("Sum is:",c) #Two things are not concatenated at one place
cat ("The value of a is",a,"\n")
cat ("The value of b is",b,"\n")
cat("Sum is", c,"\n") #For concatenation we use cat function
}


#Program 2 using paste function
{
var1 <- 4
var2 <- 9
var3 <- 7

print(var1,var2,var3) #executes only 1st variable
cat(var1,var2,var3,"\n") #concatenates the variables and print them in single line
cat(var1,"\n",var2,"\n",var3) #prints the output in multiple lines
paste(var1,var2,var3) #printing value in character
paste0(var1,var2,var3) #printed the output in char without space
}

ls() #printed all the variables that are present in the environment but the variable 
#named start with dot are not displayed because they are hidden 


#Use of Semicolon
.var4 <- 9;.var5<- 8 # Use is for multi line declaration

#Input From User
readline("My name: ") #output shown in console

nam <- readline("Enter your name: ") #output save in variable "nam"
class(nam)

as.integer(readline("Enter a number ")) #output should be integer
b <- as.integer(readline("Enter a numeric number: ")) #output should be numeric
class(b)
















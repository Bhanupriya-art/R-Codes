#Factors-In R programming language are data structures
#that are implemented to categorize the data or 
#represent categorical data and store it in multiple levels

#Factors
x <- c("female","male","female","male")
x

#converting vector to factor
gender <- factor(x)
gender

# Another way of creating a factor
gender <- factor(c("MALE","FEMALE","MALE","FEMALE"))
gender

# Giving levels to factors
gender <- factor(c("female","male","female","male"),
                 levels = c("female","transgender","male"))
gender


# Creating a factor of length - 6 and levels - 4
blood_group <- factor(c("AB-","AB+","B-","A+","B-","B-"),
                   levels = c("AB-","AB+","B-","A+"))
blood_group

# Creating a factor of length - 4 and levels - 6
blood_group <- factor(c("AB-","AB+","A+","B-"),
                      levels = c("AB-","AB+","B-","A+","O","O+"))
blood_group


name <- c("John","Jane","Smith","Jia")
temperature <- c(98.1,98.6,101.4,97.2)
flu_status <- c(F,F,T,F)
length(name)
length(temperature)
length(flu_status)

subject1 <- list(fullname=name,
                 temperature=temperature,
                 gender=gender,
                 blood_group=blood_group)
subject1

#Accessing the elements of a list by its name
subject1$fullname
subject1$blood_group


data1 <- data.frame(name, temperature,flu_status,gender,blood_group)
data1


#Accessing gender, flu_status from data1
data1$gender
data1$flu_status
data1[,1] #all rows 1st column
data1[1,] #rows 1 and all columns
data1[1] #first row first column
data1[c(1,3),c("temperature","gender")] #rows and columns and giving names of the columns which we need
data1[-2,c(-1,-3,-5)] # Deleting 2nd row and first third and fifth column is deleted
data1[c(1,3),c(2,4)] # Accessing 1st & 3rd row and 2nd and 4th column


status <- factor(c("single","married","single","single"))
status

#Modifying the 3rd index
status[3] <- "married"
status

status[4] <- "committed" # Error because we have only two levels

#Adding new level in the factors
levels(status) <- c(levels(status),"committed")
levels(status)

#Now a new entry is committed
status[4] <- "committed"
status






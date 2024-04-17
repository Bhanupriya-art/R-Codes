# Dplyr package - It is used for data manipulation

# How to install package-
install.packages('dplyr')

# loading R package
library('dplyr') 

# To generate a sample of a specifc size from a vector or a dataset, either with or without 
# replacement. The basic syntax of sample() function is below:

# sample(data, size, replace = FALSE, prob = NULL)

# Data can be a vector or a dataframe 
# Size represents the size of the sample
# Replace is used to set the values again repeated
# If it is set to TRUE
# Prob: a vector of probabaility weights for obtaining the elements of the vector being sampled

vect <- c(100,200,300,400,500,600,700)

# Get 5 random elements
sample(vect,5)

# Sample of 1 element
sample(vect,1)

library(help="datasets") 

# It is a dataset
iris

# To return 5 random rows from iris datasets
index <- sample(1:nrow(iris),5)
index
iris[index,]

# Creating a dataframe with missing data
d <- data.frame( name = c("Abhi","Bhavesh","Chaman","Dimri"), age = c(7,5,9,17), 
                 ht = c(46,NA,NA,69), school = c("yes","yes","no","no"))
d

# Arranging name according to the age
d.age <- arrange(d,age)
print(d.age)

# starts_with() function to print only ht data
select(d, starts_with("ht"))

# -starts_with() function to print except the ht data
select(d, -starts_with("ht"))

# Printing column 1 to 2
select(d, 1 : 2)

# Printing data of a column heading containing 'a'
select(d, contains("a"))

# Printing data of a column heading which matches 'na'
select(d, matches("na"))

# mutate() and transmute()
# mutate() - it is used to perform some actions to the column(temporary)
# transmute() - in this we just get the resultant(temporary)

# Calculating a variable x3 which is sum of height and age printing with ht and age
mutate(d, x3 = ht + age)
transmute(d, x3 = ht + age)

# summarise()- considering various values to one value

# Retrieving the mean of age
summarise(d,mean =  mean(age))
# Retrieving the min of age
summarise(d,min_age =  min(age))
# Retrieving the max of age
summarise(d,max_age =  max(age))
# Retrieving the median of age
summarise(d,med_age =  median(age))

# sample_n() - for rows
sample_n(d,3)
sample(d,3)

# Printing 50% of the rows - any rows
sample_frac(d,.50)

# Multiplying age with height
with(d,age*ht)

# It is necessary to give variable in within function
within(d, x <- age*ht)

# handling missing data
# is.na() Function for finding missing values:
# A logical vector is returned by this function that indicates all the NA values present.
# It returns a Boolean value. if NA is present in a vector it returns TRUE else FALSE.
is.na(d)

# is.na() in the below vector gives TRUE wherever NA is assigned and returns FALSE where 
# any value is assigned
x <- c(NA, 3, 4, NA, NA, NA, NA)
is.na(x)

# is.nan() Function for finding the missing values:
x <- c(NA, 3, 4, NA, NA, 0/0,0/0)
is.nan(x) # TRUE for NAN(not a number) only
is.na(x) # TRUE for NAN(not a number) & NA(not assigned) both

# Removing NA or NAN values
x <- c(1,2,NA,3,NA,4,0/0)
d <- is.na(x)
d
x[!d] # Method 1 to remove the missing values

x <- c(1,2, 0 / 0, 3, NA, 4, 0 / 0)
x
is.na(x)
x[!is.na(x)] # Method 2 to remove the missing values

# Creating a data frame
df <- data.frame(c1 = 1:8,
                 c2 = factor(c("B","A","B","C",
                               "A","C","B","A")))
df
# Filling the data frame with some null values
df[4,1] <- df[6,2] <- NA
df
sum(is.na(df)) # printing total number of NA values
na.omit(df) # It is used to remove the NA values and the entire row which contain NA values

df[4,1] <- df[6,2] <- NA
df
# Printing all the levels(NA is not considered one)
levels(df$c2)

# excludes every row containing even one NA
na.exclude(df)


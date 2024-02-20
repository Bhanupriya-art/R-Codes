#Dataframees: are a useful way to represent tabular data.It is a
#list of named vectors of the same length. It resembles a spreadsheet
#or a table in a database with columns and heading for each column.
#In other words a data frame can be defined as a matrix in which data 
#is stored in columns having names. Data Frames are generally used to represent time series
#while the first column can be character. the second and the third can be numeric 
#or logical.

#dataframe-
data_frame <- data.frame(Training = c("Strength","Stamina","Other"),
                         Pulse = c(100, 150, 120),
                         Duration = c(60, 30, 45))
data_frame
class(data_frame)
str(data_frame) # Str- Description of the dataframe
names(data_frame) # names- give the name of the columns

data_frame[1] # Accessing column 1
data_frame[2,] # Accessing 2nd row
data_frame[-2] # removing 2nd column
data_frame[-2,] # removing 2nd row
data_frame[["Training"]] # Accessing training column values
data_frame$Training # Accessing training column values by $ sign

data_frame
new_row <- rbind(data_frame,c("weight",110,120)) # rbind- Adding another row
new_row

new_col <- cbind(data_frame, Steps = c(1000,6000,2000)) # cbind- Adding another column Steps is the name of column
new_col
new_col[1,] # Accessing 1nd row

subset(data_frame,Pulse>100) #Creating subset for the Pulse value greter than 100(Temporray Change)

new_col
subset(new_col,Steps>1000) #Creating subset for the Steps value greter than 1000(Temporray Change)
new_col

data_frame[data_frame$Pulse>100,] # Accessing the same as line no. 33

subset(data_frame,Pulse>100,select =-Pulse) # Accessing the same as line no. 33 but Pulse column is removed

subset(data_frame,Pulse>100,select = c(Training,Duration))  # Accessing the same as line no. 41

data_frame[data_frame$Pulse>100,c("Training","Duration")]  # Accessing the same as line no. 41

subset(data_frame,Pulse>100,select = Training:Duration) # Accessing the same as line no. 33

library(help="datasets") # Giving all the datasets in R

str(trees) # Str- Description of the trees(variables are columns and observation are rows)
head(trees,n=3) #Head means first three rows and Tail means bottom rows
head(trees,n=10)
head(trees) #first 6 rows from top
tail(trees) #last 6 rows from bottom
tail(trees, n = 3) # accessing last 3 values from the bottom
tail(trees, n = 10) 

trees[10:20,] # accessing row from 10 to 20 and all the columns
trees[,1:2] # accessing all row and columns from 1 and 2
trees[,-2] # accessing all rows and columns from 1 and 3 by elimination -2 column
trees[1,3] #accessing the value at first row and third column
trees[3,4] #Null value because we have only 3 columns
dim(trees) # Giving dimension of 31 and 3
trees[trees$Height>82,]

str(cars) #Str- Description of the cars(variables are columns and observation are rows)
names(cars) #names- telling the name of coulmns
head(cars)  #first 6 rows from top
tail(cars) #last 6 rows from bottom

top.cities <- data.frame(
  city = c("seattle","washington","chicago","New York","Portland","St Louis",
           "Denver","Boston","Minneapolis","Austin","philadelphia","San Francisco",
           "Atlanta","Los Angeles","Richardson"),
  rank = c(100,96,94,93,93,92,90,90,89,87,85,84,82,80,80))
top.cities
str(top.cities)
typeof(top.cities) # giving type of the above dataframe
class(top.cities)

top.cities$rank
head(top.cities)
tail(top.cities)
tail(top.cities, n = 2)


data_1 = data.frame(
  name=c("karandeep","Karan"),
  age=c(26,27))

data_2 = data.frame(
  name=c("name1","name2"),
  age=c(26,27))

#If we are using rbind and we want to combine two dataframes for that the column for both 
#the dataframe should be same

#Combining 2 dataframe using rbind
updated <- rbind(data_1,data_2)
updated

#Combining 2 dataframe using cbind
data_1 = data.frame(
  name=c("karandeep","Karan"),
  age=c(26,27))

data_2 = data.frame(marks=c(100,200),subject=c("R","Java"))
cbind(data_1,data_2)


length(data_2) # Number of columns

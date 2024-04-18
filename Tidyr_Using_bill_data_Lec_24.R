# TIDYR In R : Used to create tidy data
# Installing packages
install.packages("tidyr",dep = T)

# loading package
library(tidyr)

# Importing file
data <- read.csv(file.choose())
View(data)

# gather() - Reshaping wide format to long format
# syntax : gather(data,key,value,...)
?gather
datapivot <- gather(data,Bill_type, Bill_Amt,gasbill:waterbill)
datapivot

# spread() - Reshaping long format to wide format
# syntax : spread(data,key,value)
dataspread <-spread(datapivot,Bill_type,Bill_Amt)
View(dataspread)
head(data)

# separate() - Split one column into multiple columns
# syntax : separate(data, col, into, sep)
datasep <- separate(data,Date,c("Day","Month","Year"), sep="-")
head(datasep)

# Unite() - to merge columns
# Syntax : unite(data, col, cols to merge, sep)
dataunite <- unite(datasep, Date, c("Day","Month","Year"), sep="/")
head(dataunite)

datauni <- unite(data,"Place",c(city,state), sep=", ")
head(datauni)

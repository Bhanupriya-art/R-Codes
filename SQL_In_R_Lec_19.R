# SQL

library("sqldf") # loading R package
# sqldf is an R package for running SQL statements on R data frames

# Or

# How to install package-
install.packages('sqldf')

# So there are two method to install the packages either by typing
# Or by simply going into the packages then click instal4l then type the name of the packages
# To call the packages you can use library function or in the packages just tick the 
# checkbox whom you want to use

stu <- read.csv(file.choose()) # file.choose()- function is use to browse any file
# read.csv- function is use to read the csv file

stu # Prints the value in console
View(sqldf("select * from stu")) # sqldf is a function in which all the queries will be 
# executed and rest is the query and query should be closed in comma's & View is a function
# which helps to view the output in another file
                                            
# Write a query to display count of all rows from student table
sqldf("select count (*) from stu")
  
# Write a query to display all the records from student table where marks are
# greater than 80
sqldf("select * from stu where marks>80")
                                            
# Write a query displaying from the student table considering marks below 80                                           
sqldf("select * from stu where marks<80")                                            

# Write a query to display all the records from student stable where name is veer                                            
sqldf("select * from stu where name = 'Veer'")                       

# Write a query to display all the records from student table where marks are 45
sqldf("select * from stu where marks='45'")  
sqldf("select * from stu where marks=='45'")  
sqldf("select * from stu where marks==45")  

# Write a query to display the name of the student whose having 45 marks
sqldf("select name from stu where marks==45")

# Write a query to display the name and roll_no of the student whose having 45 marks
sqldf("select name, roll_no from stu where marks==45")

# Write a query to display unique or distinct name of the students from the stu table
sqldf("select distinct name from stu")

# Write a query to display first two rows from table
sqldf("select * from stu limit 2")

# Write a query to display all records from stu table and order name in desc order
sqldf("select * from stu order by name desc")

# Write a query to display all records from stu table where name is ending with s
sqldf("select * from stu where name like '%s'")

# Write a query to display all records from stu table where name is ending with j
sqldf("select * from stu where name like 'j%'")

# Write a query to display unique names of the students where 2nd letter is i & 2nd last letter is a
sqldf("select distinct name from stu where name like '_i%a_'")

# Write a query to display name and marks from student table and rename name as N and
# marks as M
sqldf("select name as N,marks as M from stu")

# Write a query to display sum of all marks of students from stu table
sqldf("select sum(marks) from stu ")

# Write a query to display maximum, minimum, average, variance and standard deviation of marks
# from stu table
sqldf("select max(marks), min(marks), avg(marks), variance(marks), stdev(marks) from stu")











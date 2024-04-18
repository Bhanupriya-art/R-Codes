# Pipe Operator
# %>% is a special operator in R found 
# In the magrittr and dplyr packages
# %>% lets you pass objects to function elegantly,
# and helps you make your code more readable.
# The following two line of your code are equivalent

# Without the %>% operator

View(mtcars) # mtcars - it is a dataset
a <- filter(mtcars,carb>1)
View(a)

# Group_by() function belongs to the dplyr packages in the R programming language,
# which groups the data frames. Group_by() function alone will not give any output.
# it should be followed by summarise() function with an appropriate action to perform.
# It works similar to GROUP BY in SQL and pivot table in excel

b <- group_by(a,cyl) # cyl - 2nd column in mtcars dataset
View(b)

#it will find out mean of common group by column
c <- summarise(b, Avg_mpg = mean(mpg))
c

#it will arrange data into descending order
d<-arrange(c, desc(Avg_mpg))
print(d)

#mtcars -> filters(on carb column) -> group by (to group  dataframes) -> summarise(to find mean) -> arrange

mtcars %>%
  Filter(carb > 1) %>%
  group_by(cyl) %>%
  summarise(avg_mpg=mean(mpg)) %>%
  arrange(desc(avg_mpg))


starwars
View(starwars)

dim(starwars)

#we can select all character with light skin color and brown eyes with:
View(starwars %>% filter(skin_color == "light", eye_color == "brown"))

#this is roughly equivalent to this base r code
starwars[starwars$skin_color == "light" & starwars$eye_color == "brown"]


#arrange() works similiarly to filter except that instead of filtering selected or selected them
#it was reorder them by default it will arrange it in ascending order
View(starwars %>% arrange(height))
View(starwars %>% arrange(height, mass))

#in descind order
View(starwars %>% arrange(desc(height)))


#choose row using their position with slice()
#slice() lets you index rows by their integers locations
#it allows you to select , remove and duplicate rows


#we can get characyters from 5 to 10 rows selected
View(starwars)
starwars%>%slice(5:10)

#slice_sample randomly select rows
#use the option prop to choose a certain proportion of the cases.
starwars%>%slice_sample(n=5)
starwars %>% slice_sample(prop = 0.1)

# slice_min() and slice_max() select rows with highest or lowest values of a variable.
# Note that we first must choose only the values which are not NA.
starwars
starwars %>%
  filter(!is.na(height)) %>%
  slice_max(height, n = 3)

# Select columns with select()
starwars %>% select(hair_color, skin_color, eye_color)

# Select all columns between hair_color and eye_color (inclusive)
starwars %>% select(hair_color:eye_color)

# Select all columns except those hair_color and eye_color (inclusive)
starwars %>% select(!(hair_color:eye_color))

# Select all columns ending with color
starwars %>% select(ends_with("color"))

# Add new columns with mutate()
View(starwars %>% mutate(height_m = height / 100))

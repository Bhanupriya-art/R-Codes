# load library
library(ggplot2)

# Create test data.
data <- data.frame(
  category=c("A", "B", "C"),
  count=c(10, 60, 30)
)
data

# Compute percentages of the entries 
data$fraction = data$count / sum(data$count)
data$fraction

# Compute the cumulative percentages 
data$ymax = cumsum(data$fraction)  
data$ymax

# cummulative - running total

# Compute the bottom of each rectangle
data$ymin = c(0, head(data$ymax, n=-1)) # taking first value as 0 and last removed 
data$ymin

# Make the plot


ggplot(data, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=category)) +
  geom_rect()

ggplot(data, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=category)) +
  geom_rect() +
  coord_polar(theta="y")  
# rotate wrt y axis 

ggplot(data, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=category)) +
  geom_rect() +
  coord_polar(theta="y") + 
  xlim(c(2, 4))
# center location changed from 2 to 4 


#box plot 
ggplot(data=iris, aes(x=Species, y=Sepal.Length, 
                      fill=Species))+
  geom_boxplot()+
  ggtitle("Box Plot")


#density plot 
ggplot(data=iris, aes(x=Sepal.Length))+
  labs(x="Sepal Length",y="Frequecy of Sepal Length")+
  geom_density(fill="red",col="green",alpha=0.8)+
  ggtitle("Density Plot")

#alpha - transparency
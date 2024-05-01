# ggplot2
# Grammer of Graphics
# graphics = distinct layer of grammatical elements
# meaningful plots throught aesthetic mapping
# Componenets of grammer of graphics
# 1. DATA
# 2. AESTHETICS
# 3. GEOMETRY
# 4. FACET
# 5. STATISTICS
# 6. COORDINATES
# 7. THEMES

# We are considering dataset irirs
install.packages("ggplot2")
library(ggplot2)

View(iris)
ggplot(data = iris) # Screen will be there but no output

# So add next layer after data layer aesthetics, including axis
ggplot(data = iris, aes(x = Sepal.Length, y=Sepal.Width))

# geometries = which type of plot you need, bargraph, scatter and etc.
p <- ggplot(data = iris, aes(x = Sepal.Length, y=Sepal.Width))
p+geom_point()

# facet layer is not mandatory all other pending layers are 
ggplot(data = iris, aes(x = Sepal.Length, y=Sepal.Width))+geom_point()+facet_wrap(~Species)

# Statistics layer allows you to plot statistical values
# Calculated from the data
ggplot(data = iris, aes(x = Sepal.Length, y=Sepal.Width))+geom_point()+facet_wrap(~Species)+
  geom_smooth(method = 'lm')

# Coordinate layer: Allows you to adjust x and y axis
library(dplyr)
ggplot(filter(iris, Species == 'setosa'), aes(x = Sepal.Length, y = Sepal.Width))+
  geom_point()+coord_cartesian(xlim = c(4,8), ylim = c(2,5))

# theme()
ggplot(data = iris, aes(x = Sepal.Length, y=Sepal.Width))+geom_point()+facet_wrap(~Species)+
  geom_smooth(method = 'lm')+theme(axis.text = element_text(color = 'orange',size = 10))

ggplot(data=iris, aes(y=Petal.Length, x = Sepal.Length, col = Species, shape = Species))+
  geom_point()


# Bar chart
library(ggplot2)
house <- read.csv(file.choose(),header = TRUE)
View(house)
ggplot(data = house, aes(x = air_cond)) + geom_bar()
ggplot(data = house, aes(x = air_cond, fill = air_cond)) + geom_bar()
ggplot(data = house, aes(x = waterfront, fill = air_cond)) + geom_bar(position = 'fill')
ggplot(data = house, aes(x = waterfront, fill = sewer)) + geom_bar(position = 'fill')















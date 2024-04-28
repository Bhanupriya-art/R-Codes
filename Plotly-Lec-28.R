# Plotly - It is used for interactive plots

install.packages('plotly')
library(plotly)

plot_ly(z = volcano, type = "surface") #volcano is a dataset, type of graph is surface

fig <- plot_ly(data = iris,
               x = ~Sepal.Length,
               y = ~Petal.Length)
fig

# ~ tilt operator is use to define relationship
# x is dependent variable and y is independent variable

fig <- plot_ly(data = iris,  x = ~Sepal.Length,y = ~Petal.Length,
               marker = list(sizes = 10,
                             color = 'rgba(255, 134, 2, .9)',
                             line = list(color = 'rgba(152, 0,0, .8)',
                                         width = 2)))
fig

# In order to make markers distinct, you can add a border to the markers.
# This can be achieved by adding the line
# rgba value allows to add an opacity value in the range 0 to 1

fig <- fig %>% layout(title = 'Styled Scatter Plot')
fig


# Adding color and symbols is to data
View(iris)

fig <- plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length, type = 'scatter',
               mode = 'markers', symbol = ~Species, symbols = c('circle','x','o'),
               color = I('black'), marker = list(size = 10))
fig

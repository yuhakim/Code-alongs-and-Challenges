
library(tidyverse)


sleep <- read_csv("sleep.csv")


glimpse(sleep)


library(ggplot2)
library(plotly)

graph <- ggplot(data = sleep, 
                mapping = aes(x = `Physical Activity Level`, y = `Sleep Duration`, colour = Occupation)) + 
  geom_point() + 
  labs(title = "Physical Activity Level and Sleep Duration for Different Occupations", caption = "Source: Kaggle")

graph_interactive <- ggplotly(graph)
graph_interactive
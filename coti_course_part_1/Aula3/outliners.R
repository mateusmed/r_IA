# outliers

# iris = dataset

iris
dim(iris)


boxplot(iris$Sepal.Width)

# removendo os outliners
boxplot(iris$Sepal.Width, outline = FALSE)

# exibir os outliers
boxplot.stats(iris$Sepal.Width)$out

# pacote utilizando para trabalhar com outliers

# install.packages('outliers')
library(outliers)

# superiores
outlier(iris$Sepal.Width)

# Inferiores
outlier(iris$Sepal.Width, opposite = TRUE)

help(outlier)





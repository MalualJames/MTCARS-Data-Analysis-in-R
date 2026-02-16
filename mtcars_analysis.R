#statistical analysis in R 
company <- (mtcars)
company
summary(mtcars)

#correlation analysis btn the variables
cormatrix <- cor(mtcars)
cormatrix

#visualization in R

#scatterplot -  Plots the relationship between two numeric variables 
library("ggpubr") 

ggscatter(company, x = "mpg", y = "wt", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

#correlogram - Represent the pairwise correlation among the variables
library(corrplot) 
corrplot(cor(mtcars))

#heatmap - Display individual values within the matrix as colors
heatmap(cormatrix,
        scale = "none",
        col = colorRampPalette(c("red", "white", "blue"))(100),
        symm = TRUE)



########################################
# QUESTION 1 #
########################################

#return odd rows of a df
#Usage: odd_rows(df)

odd_rows <- function(x){
  x.new = x[seq(1, nrow(x), 2), ]
  return(x.new)
}

########################################
# QUESTION 2 #
########################################
iris <- read.csv(file.choose())
#select iris.csv

#Activate plyr for count()
library(plyr)

#COUNTING EACH SPECIES
#Usage: species_count("setosa")

species_count <- function(x){
  y = count(iris$Species==x)
  print(x)
  print(y[2,2])
}
########################################

#SEPAL WIDTH > x
#Usage: bigger_sepal(desired width)

bigger_sepal <- function(x){
  iris[iris$Sepal.Width>x,]
}
########################################

#MOVE GIVEN SPECIES TO CSV
#Usage: export_species(iris, "setosa")

export_species <- function(x, c){
  y <- x[x[,5] == c,]
  write.csv(y, paste(c, ".csv"))
  return(y)
}
  
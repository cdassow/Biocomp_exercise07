#Biocomputing HW7

setwd("C:/Users/clare/Documents/'Senior 2019-2020'/Biocomputing
      /Biocomp_exercise07")

iris <- read.csv("iris.csv")

# 1. Odd Rows - Function that returns only the odd rows
## Use: oddRows(dataset)
oddRows <- function(x){
  rows <- nrow(x)
  odd <- x[seq(1,rows,2), ]
  return(odd)
}

# 2. Return the number of instances found in each species
## Use: numberofSpecies(dataset, "Species Name")
numberofSpecies <- function(x, species){
  speciesNumber <- (x[x$Species==species, ])
  linecount <- nrow(speciesNumber)
  return(linecount)
}

# 2. Return a dataframe for flowers with a Sepal Width 
# greater than the value specified
# Use: specifySepalWidth(dataframe, value)
specifySepalWidth <- function(x, width){
  width <- x[x$Sepal.Width>width, ]
  return(width)
}

# 2. Create .csv file for a given species's data 
# Use: apeciescsv(dataset, "species")
speciescsv <- function(x, species){
  speciesName <- (x[x$Species==species, ])
  write.csv(speciesName, file = paste(species, ".csv", sep=""))
}

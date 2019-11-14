setwd("~/Desktop/biocomp-shell/Biocomp_exercise07/")

iris <- read.csv("iris.csv")

#Question 1: Return odd number of rows from a given file
#Usage: returnodd(x=dataframe)
returnodd <- function(x){
  rowcount = nrow(x)
  seq = seq.int(1, rowcount, 2)
  odd = x[c(seq),]
  
  return(odd)
}

returnodd(x=iris)
returnodd(x=wages)

#Question 2: Return the number of obsrevatins for a given species in the dataset
#Usage: returnspecies(dataframe= dataframe you are using, species="species of interest")
returnspecies <- function(dataframe, species){
  species = sum(dataframe$Species == species)
  
  return(species)
}

#Number of species in virginica, setosa, and versicolor, respectively
returnspecies(dataframe = iris, species = "virginica")
returnspecies(dataframe = iris, species = "setosa")
returnspecies(dataframe = iris, species = "versicolor")


#Question 2: Return dataframe for flowers with Sepal.width greater than a value specified by function user
#Usage: returnsepal(dataframe= dataframe you are using, threshold = # that you want Sepal.width to be greater than)
sepalwidth <- function(dataframe, threshold){
  fatsepals <- dataframe[dataframe$Sepal.Width > threshold,]
  
  return(fatsepals)
}

sepalwidth(dataframe = iris, threshold = 3.5)


#Question 2: Write data for a particular species to a comma delimited file with the given species as the file name
#Usage: speciescsv(dataframe = dataframe you are using, species_name = "species of interest")
speciescsv <- function(dataframe, species_name){
  x <- dataframe[dataframe$Species == species_name,]
  writefile <- write.csv(x, file = paste(species_name, ".csv", sep=""))
}

#Note: files will be saved to working directory
#Will create .csv files for each species in virginica, setosa, and versicolor, respectively
speciescsv(dataframe = iris, species_name = "virginica")
speciescsv(dataframe=iris, species_name="setosa")
speciescsv(dataframe=iris, species_name = "versicolor")

#exercise 7

#1. Write a function that returns the odd rows of any dataframe passed as an argument
oddReturn <- function(x) {
  rowNumbers <- seq(from=1, to=nrow(x), by=2)
  oddRows <- x[rowNumbers,]
  print(oddRows)
}

#2a. Write a function to return the number of observations for a given species included in the data set
irisData <- read.csv("iris.csv")

numObs <- function(x, speciesName) {
  temp <- x[x$Species==speciesName,]  #temp will contain each row that has the specified species name in the Species column
  rowNum <- nrow(temp)
  return(rowNum)
}
  
#2b. return a dataframe for flowers with sepal width greater than a user specified value
bigWidth <- function(x, width) {
  temp <- x[x$Sepal.Width>width,]  #temp will contain each row that meets the specified sepal width requirements
  return(temp)
}
  
#2c. write data for a given species to a comma-delimited file with species name as file name
csvSpecies <- function(x, speciesName) {
  temp <- x[x$Species==speciesName,]  #temp will contain each row that has the specified species name in the Species column
  write.csv(temp, file=paste(speciesName, ".csv", sep=""), row.names = FALSE)  #paste used to keep speciesName as a variable
}



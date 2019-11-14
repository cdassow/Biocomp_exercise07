#Write a function that returns the odd (1, 3, 5, etc.) rows of any dataframe passed as an argument

#usage: oddsonly(dataframe input)
oddsonly <- function(x){
  rows <- nrow(x)
  odds <- x[seq(1,rows,2),]
  result <- odds
  return(result)
}


#Return the number of observations for a given species included in the data set. 
#Usage: speciesobservations(dataframe,"species_name")

iris <- read.csv("iris.csv")
speciesobservations <- function(dataset,species){
  sorted <- dataset[dataset$Species==species,]
  linecount <- nrow(sorted)
  return(linecount)
}

#Return a dataframe for flowers with Sepal Width greater than the value specified by user. 

#usage: sepalwidthgreater(dataframe,input)
iris <- read.csv("iris.csv")
sepalwidthgreater <- function(dataframe,width){
  output <- dataframe[dataframe$Sepal.Width>width,]
  return(output)
}

#Write the data for a given species into a CSV file, with the given species as the file name. 
#usage: writespecies.csv(dataset,"species")
writespecies.csv <- function(dataset,species){
  name <- paste(species,".csv", sep="")
  sorted <- dataset[dataset$Species==species,]
  write.csv(sorted,name)
}





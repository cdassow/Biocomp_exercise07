#write a function that returns the odd rows of any dataframe passed as an argument
oddrows <- function(dataframe) {
  odds <- seq(1, nrow(dataframe), 2)
  return(dataframe[odds,])
}

#example: I have a 4x5 dataframe with numbers called "data"
oddrows(data)
#will return the information in rows 1, 3

#return number of observations for given species in dataset
#assumption: in dataset, column called Species with character values
species_count <- function(dataset, species_name){
  sum <- sum(dataset$Species==species_name)
  return(sum)
}
#usage examples: 
species_count(iris, "virginica")
species_count(iris, "setosa")
species_count(iris, "versicolor")

#return dataframe for flowers w/ Sepal.Width greater than value specified by function user
#assumption: in your dataframe, column called Sepal.Width with numeric values
fat_petals <- function(dataframe, threshold) {
  new_dataframe <- dataframe[dataframe$Sepal.Width > threshold, ]
  return(new_dataframe)
}
#for example, 
fat_petals(iris, 4.0)

#write data for given species to .csv file w/ given species name as file name
#assumption: in your dataframe, column called Species with character values
#note: creates file in working directory
create_species_file <- function(dataframe, species_name) {
  x <- dataframe[dataframe$Species==species_name, ]
  write.csv(x, file = paste(species_name, ".csv", sep = ""))
}
#usage: 
create_species_file(iris, "virginica")
create_species_file(iris, "setosa")
create_species_file(iris, "versicolor")
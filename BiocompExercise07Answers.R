# Part 1- return the odd rows of any dataframe
wages <- read.csv(file="~/Desktop/Biocomp/Biocomp_exercise06/wages.csv") # used wages to test function

oddRows <- function(file){
  NumbRows=nrow(file)
  oddNumbers <-seq(1,NumbRows,2)
  oddRows = file[oddNumbers,]
  return(oddRows)
}
oddRows(file=wages)

# Part 2
iris=read.csv("~/Desktop/Biocomp/Biocomp_exercise06/iris.csv")

# To return the number of observations of a given species in a data set
NumbSequence <-function(fileName, species){
  givenSpecies <- fileName[fileName$Species==species,] #establishes rule that data must have column title Species
  output = nrow(givenSpecies)
  return(output)
}
NumbSequence(iris, "setosa") #Returns number of setosas
NumbSequence(iris, "versicolor") #Returns number of veriscolors
NumbSequence(iris, "virginica") #Returns number of virginicas

#To find the individuals with a sepal width greater than x
greater_than_width<-function(x){
  width<-iris[iris$Sepal.Width>x,]
  return(width)
}
greater_than_width(3.5) #Returns dataframe of individuals with sepal width greater than 3.5

#To create a .csv file of a specified species
speciesFile<-function(iris, speciesName){
  species<-iris[iris$Species==speciesName,]
  x<-paste(speciesName,".csv",sep="")
  write.csv(species, file = x)
}
#Example: To create the file versicolor.csv with the data from iris.csv that only contains the data for versicolor species
speciesFile(iris, "versicolor")

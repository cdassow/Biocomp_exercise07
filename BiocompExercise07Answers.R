# Part 1- return the odd rows of any dataframe
file <- read.csv(file="~/Desktop/Biocomp/Biocomp_exercise06/wages.csv")

oddRows <- function(file){
  NumbRows=nrow(file)
  oddNumbers <-seq(1,NumbRows,2)
  oddRows = file[oddNumbers,]
  return(oddRows)
}
oddRows(file)

# Part 2
iris=read.csv("~/Desktop/Biocomp/Biocomp_exercise06/iris.csv")

NumbSequence <-function(iris, species){
  givenSpecies = iris[iris$Species=="species"]
  output = nrow(givenSpecies)
  return(output)
}
NumbSequence(iris, setosa)
# Output should be 50 for each one

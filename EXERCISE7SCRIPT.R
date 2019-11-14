#Paietta, Marrs, Schaeffer
#QUESTION 1
#write a function that outputs all odd of a dataset
oddRows<-function(x) {
  output<-nrow(x)
  sequence<-seq(1,output, by=2)
  return(x[sequence,])
}

oddRows(iris)

#QUESTION 2

#end output just needs to be the observation number for one species
specob<-function(y,x) {
  specobs<-y[y$Species==x,]
  nrow(specobs)
}

specob(iris, "setosa")
specob(iris, "virginica")
specob(iris, "versicolor")

#return dataframe for flowers with Sepal.Width greater than 3.5
bigSep <-function(x,y){
  output <- x[x$Sepal.Width>y,]
  return(output)
}

bigSep(iris, 3.5)

#write the data for a given species to a CSV with the given species name as the file name
#look at paste() to add the .csv extension to your file in the for-loop
flowercsv <- function(x,y) {
  m <- x[x$Species==y,]
  write.csv(m, file=paste(y, ".csv", sep=""))
}

flowercsv(iris, "setosa")
flowercsv(iris, "virginica")
flowercsv(iris, "versicolor")

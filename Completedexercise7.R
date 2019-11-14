#This is the solution to the first question
oddfunc<-function(x){
  oddnums<-seq(from=1, to=nrow(x), by=2)
  return(x[oddnums,])
}
dfoddrow<-oddfunc(df)
dfoddrow
#This is the solution to the second question part 1
#defines iris
iris<- read.csv(iris<-"C:/Users/Faith/Desktop/iris.csv")
#create a f(x) that returns the number of obs for a species in the data set
observationsfunc<-function(x){
  Speciesobs<-iris[iris$Species==x,]
  nrow(Speciesobs)
}
#Running the function with the different species as x
numsetosa<-observationsfunc("setosa")
numsetosa
numversi<-observationsfunc("versicolor")
numversi
numvirg<-observationsfunc("virginica")
numvirg
#This is the solution for the second question part 2
bigwidthfunc<-function(x){
  width<-iris[iris$Sepal.Width>x,]
  width
}
#example for 2nd question part 2
bigwidthfunc(3.5)
#Solution for 2nd question part 3
#DO: write the data for a given species to a comma-delimited file with the given species name as the file name.
#Hint: look at paste() to add the .csv extension
writingfiles<-function(x,y){
  editedspecies<-y[y$Species==x,]
  write.csv(editedspecies, file=paste(x, ".csv", sep=""))
}
writingfiles("setosa", iris)
writingfiles("versicolor", iris)
writingfiles("virginica", iris)
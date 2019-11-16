#1. odd numbers
oddnumber <- function(x){
  x1 <- read.csv(x)
  x1[seq(1, nrow(x1), by=2), ]
}
#2.a. number of observations
numberofobservations <- function(x){
  x1 <- read.csv(x)
  setosa<-sum(x1$Species=="setosa")
  print("Number of setosa")
  print(setosa)
  versicolor<-sum(x1$Species=="versicolor")
  print("Number of versicolor")
  print(versicolor)
  virginica<-sum(x1$Species=="virginica")
  print("Number of virginica")
  print(virginica)
}
#2.b. sepal.width 
sepalwidth <- function(x, n){
  x1 <- read.csv(x)
  x1[x1[,2]>n,]
}
#2.c. species.csv
speciescsv <- function(x){
  x1 <- read.csv(x)
  setosa.csv<- x1[x1[,5]=="setosa",]
  versicolor.csv<- x1[x1[,5]=="versicolor",]
  virginica.csv<- x1[x1[,5]=="virginica",]
}
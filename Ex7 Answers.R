#Answer to question 1 
iris<-read.csv("iris.csv")
findOddRows<-function(x) {
return(x[seq(1, nrow(x), 2), ])
}
findOddRows(iris)

#Answers to question 2

# number of observations for a given species 
iris<-read.csv("iris.csv")
num_obs<-function(x, taxa) {
resultObs<-x[x$Species==taxa,]
return(nrow(resultObs))
}
#for example for setosa observations
num_obs(x = iris, taxa = "setosa")

#flowers with sepal width greater than specified value 
iris<-read.csv("iris.csv")
flowers <- function(x, value) {
resultFlowers <- x[x$Sepal.Width > value, ]
return(resultFlowers)
}
#for example for sepal widths greater than 4.0
flowers(x=iris, value=4.0)

#create comma delimited .csv with given species name as the file name 
writeFile<-function(x, taxa) {
subData<-x[x$Species==taxa, ] 
write.csv(subData, file = paste(taxa, ".csv", sep = "")) 
}
#for example for setosa.csv
writeFile(x=iris, taxa= "setosa") 

iris<-read.csv("./Biocomp_exercise07/iris.csv")

#number of observations for a given species
observations<-function(species){
  spec<-iris$Species
  numobs<-as.data.frame(table(spec))
  
  return(numobs)
}

#flowers with Sepal.Width>given number
sepalWidth<-function(num){
  iris[which(iris[,2]>3.5),]
}

#data for a given species to [species].csv file
speciesData<-function(species_name){
  
}
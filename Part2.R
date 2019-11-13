iris<-read.csv("./Biocomp_exercise07/iris.csv")

#number of observations for a given species
observations<-function(df, subSet, species){
  spec<-df$subSet
  dat<-length(which(spec==species))
  
  return(dat)
}

observations(iris, Species, virginica)

#flowers with Sepal.Width>given number
sepalWidth<-function(df, num){
  width<-df[which(df[,2]>num),]
  return(width)
}
sepalWidth(iris, 3.0)


#data for a given species to [species].csv file
speciesData<-function(species_name){
  
}




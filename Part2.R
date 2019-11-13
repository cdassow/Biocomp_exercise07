iris<-read.csv("./Biocomp_exercise07/iris.csv")

#number of observations for a given species
spec<-"setosa"
observations<-function(subSet){
  dat<-sum(na.omit(subSet)==spec)
  return(dat)
}
observations(iris$Species)

#flowers with Sepal.Width>given number
sepalWidth<-function(df, num){
  width<-df[which(df[,2]>num),]
  return(width)
}
sepalWidth(iris, 3.0)


#data for a given species to [species].csv file
speciesData<-function(df, sub, species_name){
  for(n in df$sub){
    
  }
  name<-paste("./Biocomp_exercise07/",species_name, ".csv")
  write.csv(dat, file = name)
}

speciesData(iris, Species)


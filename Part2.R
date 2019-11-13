iris<-read.csv("./Biocomp_exercise07/iris.csv")

#number of observations for a given species
spec<- iris$Species
observations<-function(subSet, species_name){
  list(a = df, b=sub, c=species_name)
  dat<-length(subSet[subSet == "c"])
  return(dat)
}

observations(spec, virginica)

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




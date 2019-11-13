iris<-read.csv("./Biocomp_exercise07/iris.csv")

#the given species for this script
spec<-"setosa"


#number of observations of "spec"
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


#data for "spec" s to [species].csv file
speciesData<-function(df, species_name){
  rows<-df[which(df[,5]==spec),]
  name<-paste("./Biocomp_exercise07/",species_name,".csv", sep = "")
  write.csv(rows, file = name)
}

speciesData(iris, spec)


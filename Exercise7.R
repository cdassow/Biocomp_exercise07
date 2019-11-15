#Exercise7 - Reina Koran, Rosie Crisman
#Question 1: Write a function that returns the odd rows of any dataframe passed as an argument
iris<-read.csv("iris.csv",header=TRUE,sep=",")
oddrows<-seq(from=1,nrow(iris),by=2)
iris[,oddrows]

odds<-function(x){
  oddrows<-seq(from=1,nrow(x),by=2)
  datanew<-x[oddrows,]
  return(datanew)
}

#Question 2
#Return the number of observations for a given species included in the data set
count_observations<-function(s){
  +   num_observations<-length(which(iris$Species==s))
  +   return(num_observations)
  + 
    + }
#Return a dataframe for flowers with Sepal.Width greater than a value specified by the function user
SepalWidth<-function(W){
 Width<-iris[iris$Sepal.Width>W,]
 return(Width)
}

#Write the data for a given species to a comma-delimited file with the given species name as the file name
#Hint: look at paste() to add the csv. extension to your file in the for loop
new_data<-function(n){
  new_file<-write.csv(irish[iris$Species=="n",])
}

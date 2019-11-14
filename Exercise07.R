#Problem1
odd.rows=function(filename){
  output = read.csv(filename, header=TRUE, sep=",")
  n=(1:nrow(output))
  odd=(n%%2 == 1)
  return(output[odd,])
}

#Problem 2
mydata <- read.csv("iris.csv", header=TRUE, sep=",")
#Number of observations
numobs = function(kind){
  return(nrow(mydata[mydata$Species==kind,]))
}
#Flowers with Sepal.Width greater than a value
sepalCounts = function(x){
  return(mydata[mydata$Sepal.Width>x,])
}
#Species file
newfile = function(kind){
  output=mydata[mydata$Species==kind,]
  write.csv(output,paste0(kind,".csv"))
}
iris<-read.csv("./Biocomp_exercise07/iris.csv")

oddRows <-function(df){
  oddIndx<-df[c(TRUE,FALSE), ]
  return(oddIndx)
}

oddRows(iris)

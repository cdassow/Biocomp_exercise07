#Problem 1
Oddity<-function(df){
  odd=df[seq(1,nrow(df),by=2),]
  return(odd)
} #where df is equal to a dataframe, like iris
iris<-read.csv(file.choose()) #Choose iris.csv
Oddity(iris)
#Problem 2
Spcount<-function(x,taxa){
  count=sum(taxa[,5]==x, na.rm=TRUE)
  return(count)
}
Spcount('setosa',iris) #Count number of any species in iris.

sepalwidth<-function(x,taxa,title){
  greater=which(taxa[,2]>x)
  sepalw=write.table(taxa[greater,],file=title)
  return(sepalw)
}
sepalwidth(2,iris,"sepal") #Get rows with Sepal.Width greater than 2

creation<-function(x,taxa){
  art=which(taxa[,5]==x)
  creature=write.csv(taxa[art,], file=x)
  return(creature)
}
creation('setosa',iris) #File containing info of setosa sp
#1 question asking to only return odd rows
prob1 <- function(dataframe){
  dataframe[seq(1,nrow(dataframe),2),]
  }


#2 question part 1, asking to return the number of observations for a given species
#the number of rows indicates the numer of species 
#the user needs to enter the dataframe name as well as the species name
obv <- function(dataframe,y){
  nrow(dataframe[dataframe$Species==y,])
}



#2 question part 2, asking to return a dataframe for flowers with 
#sepal.width greater than a value specified by the function user
#the user needs to enter the dataframe name as well the specific value they desire
treecounts <- function(dataframe,value){
  exercise<-(dataframe[dataframe$Sepal.Width > value,])
  return(exercise)
}




#2 question part 3, asking to create a new csv file for each species type 
#the user needs to enter the data frame name as well as the species type 
#code was checked that it was comma seperated in linux 
prob3 <- function(dataframe,y){
  newfile <- (dataframe[dataframe$Species==y,])
  write.csv(newfile,paste(y,".csv",sep = ''),row.names = FALSE)
}





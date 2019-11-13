#creating data frame for every problem
iris_frame = read.csv(file="./iris.csv", header=TRUE, sep=",")

#----------------------------------------------------------------------------------#

#number of observations of each species
return_num_of_obvs = function(file){
  cat("\nSetosa count =", length(which(iris_frame =="setosa" )))
  cat("\nVersicolor count =", length(which(iris_frame =="versicolor")))
  cat("\nVirginica count =", length(which(iris_frame =="virginica")),"\n")
}
#call
return_num_of_obvs(iris_frame)

#----------------------------------------------------------------------------------#

#returning sepal width specified by user
return_by_sepal_width = function(file_name, width){
  print(file_name[which(iris_frame[,2]>width),])
}

#call
return_by_sepal_width(iris_frame, 4)

#----------------------------------------------------------------------------------#

#writing all data to csv file by species name
return_by_secies_name = function(file_name, name){
  return_file = paste(name, ".csv", sep = "")
  write.csv(file_name[which(file_name[,5]==name),], file=return_file, row.names = FALSE)
}

#call
return_by_secies_name(iris_frame, "setosa")




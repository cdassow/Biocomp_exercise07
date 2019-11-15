## Excercise 7
# Question 1
# Write a function that returns the odd (1, 3, 5, etc.) rows of any dataframe passed as an argument.
oddrows = function(df){
  rownumber = nrow(df)
  if((rownumber %% 2) == 0) {
    row.index = 2*c(1:(rownumber/2))-1
  } else {
    row.index = 2*c(1:((rownumber+1)/2))-1
  }
  print(df[row.index,])
}

# Alternative solution to Question 1
oddrows = function(df){
  rownumber = nrow(df)
  row.index = c()
  for (i in c(1:rownumber)){
    if(i %% 2 == 1){
      row.index = c(row.index,i)
    }
  }
  print(df[row.index,])
}


# Question 2
# load dataset
data = read.csv('iris.csv')

# return the number of observations for a given species included in the data set
number.of.obs = function(species){
  data.species = data[which(data$Species==species),]
  number.obs = nrow(data.species)
  print(number.obs)
}

# return a dataframe for flowers with Sepal.Width greater than a value specified by the function user
df.of.spl = function(n){
  data.spl = data[which(data$Sepal.Width>n),]
  data.spl
}

# write the data for a given species to a comma-delimited file with the given species name as the file name; Hint: look at paste() to add the .csv extension to your file in the for-loop.
write.species = function(species){
  data.species = data[which(data$Species==species),]
  write.csv(data.species,paste(species,'.csv',sep = ''))
}



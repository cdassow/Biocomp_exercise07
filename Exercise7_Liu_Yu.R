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

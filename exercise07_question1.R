#Return every odd row from a dataframe
return_odds = function(data){
  full_frame = read.csv(file=data, header=TRUE, sep=',')
  temp_frame = full_frame[seq(1, nrow(full_frame), 2),]
  return(temp_frame)
}
temp_var = return_odds("./iris.csv")
print(temp_var)


#******************************************************************************************
# Author: George Ronan
# Date Edited: 15 November, 2019
# R Script (Function) for BIOS 60318
# Purpose: Write a function that returns the odd (1, 3, 5, etc.) rows of any dataframe
# passed as an argument
# Returns: A dataframe containing only the odd rows from the input dataframe
#******************************************************************************************
returnodd <- function(dataframe){
  oddrows <- data.frame(matrix(data = NA,nrow = ceiling(nrow(dataframe)/2),
                        ncol = ncol(dataframe))) # Initialize output dataframe size
  n <- 1 # Initialize counting variable
  for(i in 1:nrow(dataframe)){
    if(i%%2==1){ # Odd numbered line detection
      oddrows[n,] <- dataframe[i,] # Stores line i (odd) of input in line n (indexed) of
                                   # output
      n <- n+1 # Indexes counting variable
    }
  }
  return(oddrows) # Returns dataframe containing only odd-numbered lines from input
}
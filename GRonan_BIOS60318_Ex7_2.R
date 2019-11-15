#*******************************************************************************************
# Author: George Ronan
# Date Edited: 15 November, 2019
# R Script (Multiple Functions) for BIOS 60318
# Function 1: Return the number of observations for a given species included in the data set
# Function 2: Return a dataframe for flowers with Sepal.Width greater than a value specified
#             by the function user
# Function 3: Write the data for a given species to a comma-delimited file with the given
#             species name as the file name
#*******************************************************************************************
# Initialize dataframe for testing
#*******************************************************************************************
# iris <- read.csv(file = "iris.csv",stringsAsFactors = FALSE)
#*******************************************************************************************
# Function 1 - Description above
#*******************************************************************************************
numspec <- function(dataframe){
  return(length(unique(dataframe$Species))) # Counts unique values of $Species in input
                                            # dataframe, then returns the length of the
                                            # 'unique' vector as an integer
}
#*******************************************************************************************
# Function 2 - Description above
#*******************************************************************************************
sepalcut <- function(dataframe,cutoff){
  outcut <- data.frame(matrix(data = NA,ncol = ncol(dataframe))) # Initilalize output
                                                                 # dataframe
  colnames(outcut) <- colnames(dataframe) # Synchronize dataframe column names
  n <- 1 # Initialize counting variable
  for(i in 1:nrow(dataframe)){ # Loops through input dataframe by row
    if(dataframe$Sepal.Width[i] > cutoff){ # Searches if Sepal Width is greater than cutoff
      outcut[n,] <- dataframe[i,] # Stores hit dataframe line in output dataframe
      n <- n+1 # Index counting variable
    }
  }
  return(outcut)
}
#*******************************************************************************************
# Function 3 - Description above
#*******************************************************************************************
expspec <- function(dataframe,species){
  outexp <- data.frame(matrix(data = NA,ncol = ncol(dataframe))) # Initialize output
                                                                 # dataframe
  colnames(outexp) <- colnames(dataframe) # Synchronize dataframe column names
  n <- 1 # Initialize counting variable
  for(i in 1:nrow(dataframe)){ # Loops through input dataframe by row
    if(dataframe$Species[i] == species){ # Checks is species matches input
      outexp[n,] <- dataframe[i,] # Stores hit dataframe line in output dataframe
      n <- n+1 # Index counting variable
    }
  }
  write.csv(x = outexp,file = paste(species,".csv",sep = "")) # Creates dynamically named
                                                              # output .csv file
}
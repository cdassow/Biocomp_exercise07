###Biocomputing exercise 7####

#Set working directory
setwd("C:/Users/ceara/Desktop/Biocomputing2019/Biocomp_exercise07")


# Function that returns the odd rows of a dataframe
# example DF
DF<-data.frame(matrix(NA, nrow=10, ncol=3))
labels<-c("C1", "C2", "C3")
colnames(DF)<-labels
numSeq<-seq(1, by =1, len=nrow(DF))
DF[1:10,]<-numSeq

# function
OddRow<-function(x){
  oddNums<-seq(from=1, to=nrow(x), by=2)
  odds<-x[oddNums,]
  return(odds)  
}

# Usage
OddRow(DF)

# Repeat subset of last week
# Return the num of obs for a given species in data set
    # Read in .csv file
    IrisDF<-read.csv("iris.csv", stringsAsFactors = F)
    spList<-unique(IrisDF$Species)
    SepalWidth<- 3

    # Function
    spSubset<-function(x, species, value){
    spOut<-x[x$Species==species, ]
    numObs<-nrow(spOut)
    BigSepWid<-spOut[spOut$Sepal.Width > value, ]
    return(BigSepWid)
    }

    # loop
    for(i in 1:length(spList)){
     output<-spSubset(IrisDF, spList[i], value = 1)
      filename<-paste(spList[i], ".csv", sep="")
     write.csv(output, filename, row.names=F)
    }
    

corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  corrsNum <- numeric(0)
  source("complete.r")
  nobsDfr <- complete("specdata")
  
  nobsDfr <- nobsDfr[nobsDfr$nobs > threshold, ]
  
  for (cid in nobsDfr$id) {
    filePath <- paste(getwd(),directory,sep = "/")
    fileNameList <- paste(filePath, "/", sprintf("%03d", cid), ".csv", sep="")
    rawDfr <- read.csv(fileNameList)
    corrsNum <- c(corrsNum, cor(rawDfr$sulfate, rawDfr$nitrate, use = "pairwise.complete.obs"))
  }
  return(corrsNum)
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  ## Return a numeric vector of correlations
  ## NOTE: Do not round the result!
}
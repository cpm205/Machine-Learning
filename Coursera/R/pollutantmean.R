pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  filePath <- paste(getwd(),directory,sep = "/")
  fileNameList <- paste(filePath, "/", sprintf("%03d", id), ".csv", sep="")
  dataList <- lapply(fileNameList, read.csv)
  df <- do.call("rbind", dataList)
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  if(pollutant == "sulfate"){
    pm <- mean(df[,2],na.rm = TRUE)
  }
  else if(pollutant == "nitrate"){
    pm <- mean(df[,3],na.rm = TRUE)
  }
  pm
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!
}


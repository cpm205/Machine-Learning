complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ##Method 1
  ##filePath <- paste(getwd(),directory,sep = "/")
  ##fileNameList <- paste(filePath, "/", sprintf("%03d", id), ".csv", sep="")
  
  ##dataList <- lapply(fileNameList, read.csv)
  ##df <- do.call("rbind", dataList)
  ##newdf <- df[complete.cases(df),]
  ##groupdf <- count(newdf, "ID")
  ##colnames(groupdf) <- c("id", "nobs")
  ##groupdf
  
  ##Method 2
  nobsNum <- numeric(0)
  
  for (cid in id) {
    # --- Assert get data frame as ID
    filePath <- paste(getwd(),directory,sep = "/")
    fileNameList <- paste(filePath, "/", sprintf("%03d", cid), ".csv", sep="")
    cDfr <- read.csv(fileNameList)
    
    # --- Assert count the number of complete cases and append to numeric
    # vector
    nobsNum <- c(nobsNum, nrow(na.omit(cDfr)))
  }
  
  # --- Assert return value is a data frame with TWO (2) columns
  data.frame(id = id, nobs = nobsNum)
  
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
}
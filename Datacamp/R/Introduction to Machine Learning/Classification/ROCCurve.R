trainFileName = "adult.data"; testFileName = "adult.test"

if (!file.exists (trainFileName))
  download.file (url = "http://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data", 
                 destfile = trainFileName)

if (!file.exists (testFileName))
  download.file (url = "http://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.test", 
                 destfile = testFileName)


colNames = c ("age", "workclass", "fnlwgt", "education", 
              "educationnum", "maritalstatus", "occupation",
              "relationship", "race", "sex", "capitalgain",
              "capitalloss", "hoursperweek", "nativecountry",
              "incomelevel")

trainset = read.table (trainFileName, header = FALSE, sep = ",",
                    strip.white = TRUE, col.names = colNames,
                    na.strings = "?", stringsAsFactors = TRUE)


print(trainset)

# Build a tree on the training set: tree
tree <- rpart(income ~ ., train, method = "class")

# Predict probability values using the model: all_probs
all_probs <- predict(tree,test,type="prob")

# Print out all_probs
print(all_probs)

# Select second column of all_probs: probs
probs <- all_probs[,'1']

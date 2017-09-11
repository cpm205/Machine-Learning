train_url <- "http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/train.csv"
train <- read.csv(train_url)

# Import the testing set: test
test_url <- "http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/test.csv"
test <- read.csv(test_url)

# Load the rpart, rattle, rpart.plot and RColorBrewer package
library(rpart)
library(rattle)
library(rpart.plot)
library(RColorBrewer)

# Fill in the ___, build a tree model: tree
tree <- rpart(Survived ~ ., train, method = "class")

# Predict the values of the test set: pred
pred <- predict(tree,test,type="class")

# Construct the confusion matrix: conf
conf <- table(test$Survived, pred)

# Print out the accuracy
print(sum(diag(conf))/sum(conf))
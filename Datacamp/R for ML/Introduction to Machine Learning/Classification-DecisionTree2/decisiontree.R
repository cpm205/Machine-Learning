train_url <- "http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/train.csv"
train <- read.csv(train_url)

# Import the testing set: test
test_url <- "http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/test.csv"
test <- read.csv(test_url)

# Print train and test to the console
print(train)
print(test)

# Your train and test set are still loaded
str(train)
str(test)

# Survival rates in absolute numbers
table(train$Survived) 

# Survival rates in proportions
prop.table(table(train$Survived))

# Two-way comparison: Sex and Survived
table(train$Sex, train$Survived)

# Two-way comparison: row-wise proportions
prop.table(table(train$Sex, train$Survived),1)


# Create the column child, and indicate whether child or no child
train$Child <- NA
train$Child[train$Age<18] <- 1
train$Child[train$Age>= 18] <- 0

# Initialize a Survived column to 0
test$Survived <- 0

# Set Survived to 1 if Sex equals "female"
test$Survived[test$Sex == "female"] <- 1

# Two-way comparison
prop.table(table(train$Child, train$Survived),1)

# Load the rpart, rattle, rpart.plot and RColorBrewer package
library(rpart)
library(rattle)
library(rpart.plot)
library(RColorBrewer)
library(stringr)

# Fill in the ___, build a tree model: tree
tree <- rpart(Survived  ~ Pclass + Sex + Age + SibSp + Parch + Fare  + Embarked, data = train, method = "class")

# Visualize the decision tree using plot() and text()
plot(tree)
text(tree)

# Time to plot your fancy tree
fancyRpartPlot(tree)

# Predict the values of the test set: pred
pred <- predict(tree,test,type="class")

# Construct the confusion matrix: conf
conf <- table(test$Survived, pred)

print(conf)

# Print out the accuracy
print(sum(diag(conf))/sum(conf))


# Prune the tree: pruned
pruned <- prune(tree, cp=0.01)

# Draw pruned
fancyRpartPlot(pruned)

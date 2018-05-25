# Load the rpart, rattle, rpart.plot and RColorBrewer package
library(rpart)
library(rattle)
library(rpart.plot)
library(RColorBrewer)
library(stringr)


# Print train and test to the console
print(train)
print(test)

# Your train and test set are still loaded
str(train)
str(test)


# Fill in the ___, build a tree model: tree
tree <- rpart(Survived ~ ., train, method = "class", control = rpart.control(cp=0.00001))


# Visualize the decision tree using plot() and text()
plot(tree)
text(tree)


# Prune the tree: pruned
pruned <- prune(tree, cp=0.01)

# Draw pruned
fancyRpartPlot(pruned)
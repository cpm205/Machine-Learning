#A big issue with k-Nearest Neighbors is the choice of a suitable k. 
#How many neighbors should you use to decide on the label of a new observation? 
#Let's have R answer this question for us and assess the performance of k-Nearest Neighbor classification for increasing values of k.

range <- 1:round(0.2 * nrow(knn_train))
accs <- rep(0, length(range))

print(range)
print(accs)

for (k in range) {
  
  # Fill in the ___, make predictions using knn: pred
  pred <- knn(knn_train, knn_test, train_labels, k = k)
  
  # Fill in the ___, construct the confusion matrix: conf
  conf <- table(test_labels, pred)
  
  # Fill in the ___, calculate the accuracy and store it in accs[k]
  accs[k] <- sum(diag(conf)) / sum(conf)
}

# Plot the accuracies. Title of x-axis is "k".
plot(range, accs, xlab = "k")

# Calculate the best k
which.max(accs)
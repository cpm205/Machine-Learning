from sklearn.datasets import load_iris
import numpy as np
from sklearn import tree

#Step 1 - Import Dataset
iris = load_iris()
print("iris database");
print(iris)
print(iris.feature_names)
print(iris.target_names)

#first row in iris database
print("First row in the database");
print(iris.data[0])
print(iris.target[0])

#print out entire dataset
for i in range(len(iris.target)):
    print("Example %d: label %s, features %s" % (i, iris.target[i],iris.data[i]))

#Step 2 - Train a classifier
#1. Split database into Training Set and Test Set
test_idx = [0,50,100]
#training set
train_target = np.delete(iris.target, test_idx)
train_data = np.delete(iris.data, test_idx, axis=0)
print("training set");
print(train_target)
print(train_data)

#test set
test_target = iris.target[test_idx]
test_data = iris.data[test_idx]
print("test set");
print(test_target)
print(test_data)

#2. train classifier
clf = tree.DecisionTreeClassifier()
clf.fit(train_data,train_target)

#Step 3 - test classifier with Test set
print("Result");
print(test_target)
print(clf.predict(test_data))
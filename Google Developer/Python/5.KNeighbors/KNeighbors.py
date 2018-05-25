#KNeighbor can generate much stable result.
from sklearn import datasets
from sklearn.cross_validation import train_test_split
from sklearn import tree
from sklearn.metrics import accuracy_score
from sklearn.neighbors import KNeighborsClassifier

iris = datasets.load_iris();
print(type(iris))

print("Show Database")
print(iris)


X = iris.data
y = iris.target

#Partition dataset into Training and Test with 50% data in each.
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5)

#Generate a classifer
my_classifier = KNeighborsClassifier()
my_classifier.fit(X_train, y_train)
predictions = my_classifier.predict(X_test)
print(predictions)

#Check the accuracy of the prediction
print("How accurate is my prediction?")
print(accuracy_score(predictions,y_test))
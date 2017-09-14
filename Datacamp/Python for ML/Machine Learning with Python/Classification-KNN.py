from sklearn.neighbors import KNeighborsClassifier
from sklearn import datasets

iris = datasets.load_iris()
knn = KNeighborsClassifier(n_neighbors=6)
x = iris.data
y = iris.target
print(iris)
print(x)

##Ensure there is no missing value in data be
knn.fit(iris.data,iris.target)
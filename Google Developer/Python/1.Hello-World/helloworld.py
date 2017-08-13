import sklearn
import sklearn.tree as tr

features = [[140,1],[130,1],[150,0],[170,0]]
#1 - Orange, 0 - Apple
labels = [0,0,1,1]
clf = tr.DecisionTreeClassifier()
clf = clf.fit(features,labels)
print(clf.predict([[160,0]]))
from sklearn import datasets
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

plt.style.use('ggplot')
iris = datasets.load_iris()

type(iris)
#display features names
print(iris.keys())
#Summary of iris database
str(iris)
iris.data.shape
#target name
iris.target_names

####Exploratory data analysis - EDA
x = iris.data
y = iris.target
print(y)
#build data frame
df = pd.DataFrame(x, columns=iris.feature_names)
print(df)
#Visual EDA


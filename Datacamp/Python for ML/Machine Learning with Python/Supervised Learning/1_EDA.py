
#Step 1 Exploratry Data Analysis

from sklearn import datasets
import pandas as pd

f = open("house-votes-84.data")
f.readline() 

type(f)
print(f.keys())
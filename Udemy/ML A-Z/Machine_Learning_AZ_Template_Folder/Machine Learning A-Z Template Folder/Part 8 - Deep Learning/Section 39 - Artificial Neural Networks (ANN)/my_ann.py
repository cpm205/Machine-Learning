# -*- coding: utf-8 -*-
"""
Created on Mon Oct 29 23:28:14 2018

@author: derekh
"""
# Part 1 - Data Preprocessing

# Importing the libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

#Import dataset
dataset = pd.read_csv('Churn_Modelling.csv')
X = dataset.iloc[:, 3:13].values
y = dataset.iloc[:, 13].values

# Encoding categorical data - Do this if categorical data is string
from sklearn.preprocessing import LabelEncoder, OneHotEncoder
labelencoder_X_1 = LabelEncoder()
X[:, 1] = labelencoder_X_1.fit_transform(X[:, 1])
labelencoder_X_2 = LabelEncoder()
X[:, 2] = labelencoder_X_2.fit_transform(X[:, 2])
#this will turn geography col into 3 different column - 0:France 1:Germany 2:Spain
onehotencoder = OneHotEncoder(categorical_features = [1])
X = onehotencoder.fit_transform(X).toarray()
#To Avoid dummy variable trap, so we have to create dummy variables for categorical variables
#of country since it contains 3 countries. No need to do same thing to Gender, since it
#only has 2 categories.
X = X[:, 1:]

# Splitting the dataset into the Training set and Test set
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.25, random_state = 0)

#Feature Scaling
from sklearn.preprocessing import StandardScaler
sc = StandardScaler()
X_train = sc.fit_transform(X_train)
X_test = sc.transform(X_test)

#Part 2 - Make ANN
import keras
from keras.models import Sequential
from keras.layers import Dense

#Initial ANN
classifier = Sequential()

#Adding the input layer and the first hidden layer
#output_dim: Number of nodes you want to add to hidden layer
#It's hard to choose how many nodes to added into hidden layer, in general we can use
#formula like (number of input nodes:11 + number of ouput node:1)/2 = 6
#init = 'uniform': will initialize the weight as small number close to zero using uniform function.
#input_dim: number of nodes in input layer.
classifier.add(Dense(output_dim = 6, init = 'uniform', activation = 'relu', input_dim = 11))

# Adding the second hidden layer
classifier.add(Dense(output_dim = 6, init = 'uniform', activation = 'relu'))

# Adding the output layer
#If we have more than 2 classes that need to classified, first you have to change
#output_dim parameter depend on number of classes, second use softmax as 
#activation function.
classifier.add(Dense(output_dim = 1, init = 'uniform', activation = 'sigmoid'))
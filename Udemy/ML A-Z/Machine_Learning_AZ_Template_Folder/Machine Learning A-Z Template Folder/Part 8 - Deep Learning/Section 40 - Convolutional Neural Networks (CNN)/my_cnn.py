#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Nov 19 23:04:02 2018

@author: Derek
"""
#Part 1 - Building the CNN
from keras.models import Sequential
from keras.layers import Convolution2D
from keras.layers import MaxPooling2D
from keras.layers import Flatten
from keras.layers import Dense

# Initialising the CNN
classifier = Sequential()

# Step 1 - Convolution
#32 - Number of feature detectors or filters, also number of feature maps we want to create.
#Because one feature detector generates one feature map. By default, it is 64.
#3 - Number of rows in feature detector table
#3 - Number of columns in feature detector table.
#input_shape - Shape of input image in this case. This will convert different size
#of images into same format. 
#64 and 64 - Dimension of 2d array in each channel. If you want to use 128*128, please run code using GPU.
#3 - color channel, 3 is for colored image, 1 is for black and white image. 
#Bear in mind, if we use Theano backend rather than TensorFlow, the order for input_shape should be
#(3,64,64)
#activation = 'relu' - Reason to use relu:First, remove any negative pixes, second remove linearity from
#model.
classifier.add(Convolution2D(32, 3, 3, input_shape = (64, 64, 3), activation = 'relu'))

# Step 2 - Pooling
#2*2 is smallest
classifier.add(MaxPooling2D(pool_size = (2, 2)))

# Step 3 - Flattening
classifier.add(Flatten())

#How many input nodes do we actually have in our input layer after flattening.
classifier.summary()

# Step 4 - Full connection
#input Layer
#output_dim = 128 - come from experiment
#No need to speccify the weight initialization function, it will use "uniform" by default.
classifier.add(Dense(output_dim = 128, activation = 'relu'))
#Output layer
#Output_dim = 1 - Because we are predicting dog or cat, so the node in output layer is 1.
classifier.add(Dense(output_dim = 1, activation = 'sigmoid'))

# Compiling the CNN
classifier.compile(optimizer = 'adam', loss = 'binary_crossentropy', metrics = ['accuracy'])


# Part 2 - Fitting the CNN to the images
#Image classification requires a lot of images for training the model, in this case we only have 10000 images,
#which is not a lot. ImageDataGenerator will help us in this case, 
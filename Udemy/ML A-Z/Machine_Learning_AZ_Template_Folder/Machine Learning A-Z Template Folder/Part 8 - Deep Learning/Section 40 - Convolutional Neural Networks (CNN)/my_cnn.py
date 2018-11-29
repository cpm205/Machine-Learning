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
#Number of Params: 896 = filter:32 * row:3 * column:3 * last value in input_shape:3 + filter:32
classifier.summary()
# Step 2 - Pooling
#2*2 is smallest
classifier.add(MaxPooling2D(pool_size = (2, 2)))

# Adding a second convolutional layer could increase accuracy
#No need to specify input_shape in second convolutional layer, because the input for this layer is
#result from previous MaxPooling.
classifier.add(Convolution2D(32, (3, 3), activation="relu"))
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
#Adding another fully connected layer could increase the accuracy
# Compiling the CNN
classifier.compile(optimizer = 'adam', loss = 'binary_crossentropy', metrics = ['accuracy'])


# Part 2 - Fitting the CNN to the images
#Image classification requires a lot of images for training the model, in this case we only have 10000 images,
#which is not a lot. ImageDataGenerator will help us in this case, it will create mnay batches of 
#our images and then each batch will apply some random transformations on a random selection
#of our images like rotating them, shifting them, flipping them. Eventually what we getting
#during the training is many diverse images inside these batches. This is technique is called
#Augmentation.
from keras.preprocessing.image import ImageDataGenerator

#solve "image file is truncated" issue
#from PIL import ImageFile
#ImageFile.LOAD_TRUNCATED_IMAGES = True

train_datagen = ImageDataGenerator(rescale = 1./255,
                                   shear_range = 0.2,
                                   zoom_range = 0.2,
                                   horizontal_flip = True)

test_datagen = ImageDataGenerator(rescale = 1./255)
#target_size = (64, 64) - When we do convolution, we choose image input_shape is
#64* 64, therefore the our target_size has to be 64*64 as well. Sometime increase this number
#can increase the accuracy.
#class_mode = 'binary' - we ony have 2 categories:cat and dog, so mode is binary
training_set = train_datagen.flow_from_directory('dataset/training_set',
                                                 target_size = (64, 64),
                                                 batch_size = 32,
                                                 class_mode = 'binary')

test_set = test_datagen.flow_from_directory('dataset/test_set',
                                            target_size = (64, 64),
                                            batch_size = 32,
                                            class_mode = 'binary')

#steps_per_epoch - number of images in training set
#validation_data- - number of images in testing set for validate the model
classifier.fit_generator(training_set,
                         steps_per_epoch = 8000,
                         epochs = 25,
                         validation_data = test_set,
                         validation_steps = 2000)
#if you want to use gpu+cpu to train the model, please use model below
#but batch_size needs to be changed to 64 or 128 or 256 or so on
#classifier.fit_generator(training_set,
#                         steps_per_epoch = 8000,
#                         epochs = 25,
#                         validation_data = test_set,
#                         validation_steps = 2000,
#                         use_multiprocessing = True,
#                         workers = 4)

#we can use code below to make prediction
#from keras.preprocessing import image as image_utils
#import numpy as np
# 
#test_image = image_utils.load_img('test.jpg', target_size=(64, 64))
#test_image = image_utils.img_to_array(test_image)
#test_image = np.expand_dims(test_image, axis=0)
# 
#classes = test_set.class_indices  
#result = classifier.predict(test_image)
# 
#if result[0][0] == 1:
#    prediction = 'dog'
#else:
#    prediction = 'cat'

#Here how you can do predictions with some cat pictures:
# Make predictions with some cat pictures
#from keras.preprocessing import image as image_utils
#import numpy as np
#predictions=[]
#for i in range(1, 1000):
#    test_image = image_utils.load_img('dataset/training_set/cats/cat.{0}.jpg'.format(i), target_size=(64, 64))
#    test_image = image_utils.img_to_array(test_image)
#    test_image = np.expand_dims(test_image, axis=0)
#    predictions.append(classifier.predict_on_batch(test_image)[0][0])

#Or you can predict one picture, cat [0] or dog[1].
    # prediction on a new picture
#from keras.preprocessing import image as image_utils
#import numpy as np
# 
#test_image = image_utils.load_img('dataset/new_images/dog_picture.jpg', target_size=(64, 64))
#test_image = image_utils.img_to_array(test_image)
#test_image = np.expand_dims(test_image, axis=0)
# 
#result = classifier.predict_on_batch(test_image)
    

#how to get loss curve and accuracy curve ?
#history = model.fit(X, Y, validation_split=0.33, epochs=150, batch_size=10, verbose=0)
## list all data in history
#print(history.history.keys())
## summarize history for accuracy
#plt.plot(history.history['acc'])
#plt.plot(history.history['val_acc'])
#plt.title('model accuracy')
#plt.ylabel('accuracy')
#plt.xlabel('epoch')
#plt.legend(['train', 'test'], loc='upper left')
#plt.show()
## summarize history for loss
#plt.plot(history.history['loss'])
#plt.plot(history.history['val_loss'])
#plt.title('model loss')
#plt.ylabel('loss')
#plt.xlabel('epoch')
#plt.legend(['train', 'test'], loc='upper left')
#plt.show()
import numpy as np
import matplotlib.pyplot as plt
import tensorflow as tf
import urllib
import os

learn = tf.contrib.learn
tf.logging.set_verbosity(tf.logging.ERROR)

mnist = learn.datasets.load_dataset('mnist')
data = mnist.train.images
labels = np.asanyarray()

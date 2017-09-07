# Import the numpy package as np
import numpy as np

# Create list baseball
baseball = [180, 215, 210, 210, 188, 176, 209, 200]

# Create a numpy array from baseball: np_baseball
np_baseball = np.array(baseball)

# Print out type of np_baseball
print(type(np_baseball))

#2D NumPy Array
# Create baseball, a list of lists
baseball = [[180, 78.4],
            [215, 102.7],
            [210, 98.5],
            [188, 75.2]]


# Create a 2D numpy array from baseball: np_baseball
np_baseball = np.array(baseball)

# Print out the type of np_baseball
print(type(np_baseball))

# Print out the shape of np_baseball
print(np_baseball.shape)

# Select the entire second column of np_baseball: np_weight
np_weight = np_baseball[:,1]
print(np_weight)

# Print out the 4th row of np_baseball
print(np_baseball[3,:])

# Print out height of 1st player
print(np_baseball[1:1])

# Print out the mean of np_height
print(np.mean(np_baseball))

# Print out the median of np_height
print(np.median(np_baseball))

# Print out correlation between first and second column. Replace 'None'
corr = np.corrcoef(np_baseball[:,0], np_baseball[:,1])
print("Correlation: " + str(corr))
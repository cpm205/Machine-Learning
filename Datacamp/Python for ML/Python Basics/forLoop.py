# areas list
areas = [11.25, 18.0, 20.0, 10.75, 9.50]

# Code the for loop
for area in areas:
    print(area)


# Change for loop to use enumerate()
for index, area in enumerate(areas) :
    print("room " + str(index) + ": " + str(area))

# house list of lists
house = [["hallway", 11.25],
         ["kitchen", 18.0],
         ["living room", 20.0],
         ["bedroom", 10.75],
         ["bathroom", 9.50]]

# Build a for loop from scratch
for x in house:
    print("the " + x[0] + " is " + str(x[1]) + " sqm")


#Loop Dictionary
    # Definition of dictionary
    europe = {'spain': 'madrid', 'france': 'paris', 'germany': 'bonn',
              'norway': 'oslo', 'italy': 'rome', 'poland': 'warsaw', 'australia': 'vienna'}

    # Iterate over europe
    for key, value in europe.items():
        print("the capital of " + key + " is " + value)


# Loop normal Numpy Array
import numpy as np
np_height = np.array([74,74, 72,75, 75, 73])
for x in np_height:
    print(str(x) +" inches")


#Loop 2D Numpy Array
np_baseball = np.array([[ 74, 180],[ 74, 215],[ 72, 210],[ 75, 205],[ 75, 190],[ 73, 195]])
for x in np.nditer(np_baseball):
    print(str(x))


#######Loop use Pandas#####
# Pre-defined lists
names = ['United States', 'Australia', 'Japan', 'India', 'Russia', 'Morocco', 'Egypt']
dr =  [True, False, False, False, True, True, True]
cpc = [809, 731, 588, 18, 200, 70, 45]

# Import pandas as pd
import pandas as pd

# Create dictionary my_dict with three key:value pairs: my_dict
my_dict = {
    'country':names,
    'drives_right':dr,
    'cars_per_cap':cpc
}

# Build a DataFrame cars from my_dict: cars
cars = pd.DataFrame(my_dict)

# Print cars
print(cars)

# Definition of row_labels
row_labels = ['US', 'AUS', 'JAP', 'IN', 'RU', 'MOR', 'EG']

# Specify row labels of cars
cars.index = row_labels

# Print cars again
print(cars)

for lab, row in cars.iterrows() :
    print(lab)
    print(row)

# Adapt for loop
for lab, row in cars.iterrows() :
    print(lab + ": " + str(row["cars_per_cap"]))

# Code for loop that adds COUNTRY column
for lab, row in cars.iterrows() :
    cars.loc[lab, "COUNTRY"] = row["country"].upper()

# Print cars
print(cars)


# Use .apply(str.upper)
cars["name_length"] = cars["country"].apply(len)
# Print cars
print(cars)
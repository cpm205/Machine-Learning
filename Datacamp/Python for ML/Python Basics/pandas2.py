#Squre Bracket[]
#1. Column access: brics[["country","captial"]]
#2. Row access: Only through slicing brics[1:4]
#loc (label-based)
#1. Row access brics.loc[["RU", "IN", "CH"]]
#2. Column access brics.loc[:,["country","capital"]] or brics.iloc[:,[0,1]]
#3. Row&Column access brics.loc[["RU","IN","CH"],["country","capital"]] or brics.iloc[[1,2,3],[0,1]]

import pandas as pd
import numpy as np

# Pre-defined lists
names = ['United States', 'Australia', 'Japan', 'India', 'Russia', 'Morocco', 'Egypt']
dr =  [True, False, False, False, True, True, True]
cpc = [809, 731, 588, 18, 200, 70, 45]

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

# Print out country column as Pandas Series
print(cars["country"])

# Print out country column as Pandas DataFrame
print(cars[["country"]])

# Print out DataFrame with country and drives_right columns
print(cars[["country","drives_right"]])

# Print out first 3 observations
print(cars[0:3])

# Print out fourth, fifth and sixth observation
print(cars[3:6])

############ioc and iloc############
# Print out observation for Japan
#print(cars.loc['JAP'])
print(cars.loc[2])
# Print out observations for Australia and Egypt
#print(cars.loc[['AUS', 'EG']])
print(cars.loc[[1,6]])


# Print out drives_right value of Morocco
#print(cars.loc['MOR', 'drives_right'])
print(cars.iloc[5, 2])

# Print sub-DataFrame
#print(cars.loc[['RU', 'MOR'], ['country', 'drives_right']])
print(cars.iloc[[4,5], [1,2]])

# Print out drives_right column as Series
print(cars.loc[:,"drives_right"])
print(cars.iloc[:, 2])
# Print out drives_right column as DataFrame
print(cars.loc[:, ['drives_right']])
print(cars.iloc[:, [2]])
# Print out cars_per_cap and drives_right as DataFrame
print(cars.loc[:, ['cars_per_cap', 'drives_right']])
print(cars.iloc[:, [0, 2]])


#Filtering Pandas DataFrame
# Extract drives_right column as Series: dr
dr = cars.loc[:,"drives_right"]
# Use dr to subset cars: sel
sel = cars[dr]
# Print sel
print(sel)

# Create car_maniac: observations that have a cars_per_cap over 500
cpc = cars.loc[:,"cars_per_cap"]
many_cars = cpc > 500
car_maniac = cars[many_cars]
# Print car_maniac
print(car_maniac)


# Create medium: observations with cars_per_cap between 100 and 500
import numpy as np
cpc = cars['cars_per_cap']
between = np.logical_and(cpc > 100, cpc < 500)
medium = cars[between]
# Print medium
print(medium)
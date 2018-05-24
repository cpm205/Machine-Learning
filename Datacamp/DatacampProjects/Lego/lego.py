#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue May 15 00:14:58 2018

@author: Derek
"""

# Import modules
import pandas as pd
import matplotlib.pyplot as plt

# Read colors data
colors = pd.read_csv('colors.csv')

# Print the first few rows
print(colors.head())

# How many distinct colors are available?
# -- YOUR CODE FOR TASK 3 --
print(colors.shape)
num_colors = 139

# colors_summary: Distribution of colors based on transparency
# -- YOUR CODE FOR TASK 4 --
colors_summary = colors.groupby("is_trans").count()
print(colors_summary)

# Read sets data as `sets`
sets = pd.read_csv('sets.csv')
print(sets.head())
# Create a summary of average number of parts by year: `parts_by_year`
parts_by_year = sets[['year', 'num_parts']].groupby("year",as_index = False).count()
print(parts_by_year)
# Plot trends in average number of parts by year
plt.plot(parts_by_year["year"],parts_by_year["num_parts"])

# themes_by_year: Number of themes shipped by year
themes_by_year = sets[['year', 'theme_id']].groupby("year",as_index = False).count()
print(themes_by_year)
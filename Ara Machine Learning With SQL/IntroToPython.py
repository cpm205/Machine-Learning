

import pandas as pd

# by default the read_csv function will read a comma separated file,

df = pd.read_csv('D:/data/countrystat.csv')

 


# we use the head function so Python only shows us the first 5 rows
print(df.head())

 


# we use the tail function so Python only shows us the first 5 rows
print(df.tail())


 


#what data type is df anyway?
print(type(df))

 


#Determine the number of rows and columns
print(df.shape)


 

# get column names

print(df.columns)


 


#get the datatypes of the columns
print(df.dtypes)


 


#get detailed column information
print(df.info())

 


# just get the country column and save it to its own variable
country_df = df['country']

# show the first 5 observations
print(country_df.head())

# show the last 5 observations
print(country_df.tail())




# select part of the data to look at country, continent, and year
subset = df[['country', 'continent', 'year']]
print(subset.head())


# get the first column (index 0) and last column
#subset = df[[0, -1]]
#print(subset.head())


# create a range of integers from 0 - 4 inclusive
#small_range = list(range(5))


# subset the dataframe with the range
#subset = df[small_range]
#print(subset.head())
# select the first, 100th, and 1000th row
# note the double square brackets similar to the syntax used to
# subset multiple columns
print(df.loc[[0, 99, 999]])

# get the first row
print(df.iloc[0])

# get the 43rd country in our data
print(df.ix[42, 'country'])

print(df.loc[42, 'country'])


# In[39]:


# For each year in our data, what was the average life expectancy?
# To answer this question, we need to split our data into parts by year
# then we get the 'lifeExp' column and calculate the mean
print(df.groupby('year')['lifeExp'].mean())


# In[42]:


grouped_year_df = df.groupby('year')
print(type(grouped_year_df))
print(grouped_year_df)

grouped_year_df_lifeExp = grouped_year_df['lifeExp']
print(type(grouped_year_df_lifeExp))
print(grouped_year_df_lifeExp)


mean_lifeExp_by_year = grouped_year_df_lifeExp.mean()
print(mean_lifeExp_by_year)


# In[43]:


print(df.groupby(['year', 'continent'])[['lifeExp', 'gdpPercap']].mean())

# use the nunique (number unique) to calculate the number of unique values in a series
print(df.groupby('continent')['country'].nunique())

global_yearly_life_expectancy = df.groupby('year')['lifeExp'].mean()
print(global_yearly_life_expectancy)



# In[45]:


import matplotlib.pyplot as plt
get_ipython().magic('matplotlib inline')


# In[75]:

df.groupby(['year'])['lifeExp'].mean().plot()


# In[ ]:

df.groupby(['year'])['lifeExp'].mean().plot()


# In[44]:


global_yearly_life_expectancy.plot()


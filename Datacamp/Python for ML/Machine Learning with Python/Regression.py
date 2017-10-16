import pandas as pd
import numpy as np
import matplotlib.pyplot as pt


df = pd.read_excel("slr07.xls")
df.columns = ['nose_length', 'nose_width']
df

# Plot nose length as function of nose width.
pt.plot(df, xlab = "nose width", ylab = "nose length")


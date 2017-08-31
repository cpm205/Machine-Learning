#Exponentiation: **. This operator raises the number to its left to the power of the number to its right. For example 4**2 will give 16.
# Modulo: %. This operator returns the remainder of the division of the number to the left by the number on its right. For example 18 % 7 equals 4.

# How much is your $100 worth after 7 years with a 10% return each year?
print(100*1.1**7)

#Type conversion
# Definition of savings and result
savings = 100
result = 100 * 1.10 ** 7
# Fix the printout
print("I started with $" + str(savings) + " and now have $" + str(result) + ". Awesome!")
# Definition of pi_string
pi_string = "3.1415926"
# Convert pi_string into float: pi_float
pi_float = float(pi_string)

a = [4.34, 0.61, 6.55]
b = ['g', 'g', 'h']
c = [9, 3, 3]
print([c, a, b])
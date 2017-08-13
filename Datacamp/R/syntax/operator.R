#Operator
#compare vector
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15

# Quiet days
linkedin<= 5

# LinkedIn more popular than Facebook
linkedin > facebook

views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)
# When does views equal 13?
views == 13
# When is views less than or equal to 14?
views <= 14

#last item of vector
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last < 5 | last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <= 20



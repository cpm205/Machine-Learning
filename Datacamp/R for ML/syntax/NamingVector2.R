# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <-   days_vector
names(roulette_vector) <- days_vector


print(poker_vector)
print(roulette_vector)


# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <- sum(roulette_vector)  

# Total winnings overall
total_week <- total_poker + total_roulette

# Print out total_week
print(total_week)

# Define a new variable based on a selection
poker_wednesday <- poker_vector["Wednesday"]

#Assign the poker results of Tuesday, Wednesday and Thursday to the variable poker_midweek.
poker_midweek <- poker_vector[c(2,3,4)]

#Assign to roulette_selection_vector the roulette results from Tuesday up to Friday; make use of : if it makes things easier for you.
roulette_selection_vector <- roulette_vector[c(2:5)]

# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[c("Monday","Tuesday","Wednesday")]

# Calculate the average of the elements in poker_start
mean(poker_start)


# Which days did you make money on poker?
selection_vector <- poker_vector > 0
print(selection_vector)
# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
print(poker_winning_days)


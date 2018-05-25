# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)
print(box_office)

  
# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)
print(star_wars_matrix)


# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
print(star_wars_matrix)

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
print(worldwide_vector)

#Adding a column for the Worldwide box office
# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
print(all_wars_matrix)

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)

# Print out total_revenue_vector
print(total_revenue_vector)


#selects the element at the first row and second column.
print(all_wars_matrix[1,2])
#results in a matrix with the data on the rows 1, 2, 3 and columns 2
print(all_wars_matrix[1:3,2])

#selects all elements of the first column
print(all_wars_matrix[,1])

#selects all elements of the first row.
print(all_wars_matrix[1,])

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]
print(non_us_all)

# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]
print(non_us_some)

# Average non-US revenue for first two movies
mean(non_us_some)

# Estimate the visitors with ticket price $5
visitors <- all_wars_matrix/5

# Print the estimate to the console
print(visitors)

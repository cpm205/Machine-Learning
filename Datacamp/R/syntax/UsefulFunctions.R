# The errors vector has already been defined for you
errors <- c(1.9, -2.6, 4.0, -9.5, -3.4, 7.3)

# Sum of absolute rounded values of errors
sum(abs(round(errors)))

# The linkedin and facebook lists have already been created for you
linkedin <- list(16, 9, 13, 5, 2, 17, 14)
facebook <- list(17, 7, 5, 16, 8, 13, 14)

# Convert linkedin and facebook to a vector: li_vec and fb_vec
li_vec <- as.list(linkedin)
fb_vec <- as.list(facebook)

# Append fb_vec to li_vec: social_vec
social_vec<- append(li_vec,fb_vec)

# Sort social_vec
sort(unlist(social_vec),decreasing = TRUE)

rep(seq(1, 7, by = 2), times = 7)
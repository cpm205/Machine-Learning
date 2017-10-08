#You've correctly calculated the RMSE in the last exercise, but were you able to interpret it? 
#You can compare the RMSE to the total variance of your response by calculating the R2R2, which is unitless! The closer R2 to 1, the greater the degree of linear association is between the predictor and the response variable.
#R calculates these performance measures for you. You can display them by applying summary() to your linear model object. 
#Your job is to now manually calculate R2 and compare your value to the value that R calculated automatically.



# kang_nose is pre-loaded in your workspace
kang_nose = graykangroo

# Build model and make plot
lm_kang <- lm(nose_length ~ nose_width, data=kang_nose)
plot(kang_nose, xlab = "nose width", ylab = "nose length")
abline(lm_kang$coefficients, col = "red")

# Apply predict() to lm_kang: nose_length_est
nose_length_est <- predict(lm_kang)

# Calculate difference between the predicted and the true values: res
res <- kang_nose$nose_length - nose_length_est
print(res)

# Calculate RMSE, assign it to rmse and print it
rmse <- sqrt(mean(res ^ 2))
print(rmse)


# Calculate the residual sum of squares: ss_res
ss_res = sum(res^2)

# Determine the total sum of squares: ss_tot
ss_tot = sum((kang_nose$nose_length-mean(kang_nose$nose_length))^2)

# Calculate R-squared and assign it to r_sq. Also print it.
r_sq = 1 - (ss_res / ss_tot)
print(r_sq)

# Apply summary() to lm_kang
summary(lm_kang)

# Summarize lm_kang and select R-squared
summary(lm_kang$coefficients) 
summary(lm_kang)$r.squared
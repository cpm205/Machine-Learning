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
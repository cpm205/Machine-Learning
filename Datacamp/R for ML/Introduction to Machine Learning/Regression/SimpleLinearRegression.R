kang_nose = graykangroo
newdata <- data.frame(nose_width = c(250))
newdata

# Plot nose length as function of nose width.
plot(kang_nose, xlab = "nose width", ylab = "nose length")


# Fill in the ___, describe the linear relationship between the two variables: lm_kang
lm_kang <- lm(nose_length ~ nose_width, data = kang_nose)

# Print the coefficients of lm_kang
print(lm_kang["coefficients"])

# Predict and print the nose length of the escaped kangoroo
predict(lm_kang,newdata)

abline(lm_kang$coefficients, col = "red")


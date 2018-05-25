#The term factor refers to a statistical data type used to store categorical variables. The difference between a categorical variable and a continuous variable is that a categorical variable can belong to a limited number of categories. A continuous variable, on the other hand, can correspond to an infinite number of values.
#It is important that R knows whether it is dealing with a continuous or a categorical variable, as the statistical models you will develop in the future treat both types differently. (You will see later why this is the case.)
#A good example of a categorical variable is the variable 'Gender'. A human individual can either be "Male" or "Female", making abstraction of inter-sexes. So here "Male" and "Female" are, in a simplified sense, the two values of the categorical variable "Gender", and every observation can be assigned to either the value "Male" of "Female".

# Gender vector
gender_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert gender_vector to a factor
factor_gender_vector <- factor(gender_vector)

# Print out factor_gender_vector
print(factor_gender_vector)


#There are two types of categorical variables: a nominal categorical variable and an ordinal categorical variable.
#A nominal variable is a categorical variable without an implied order. This means that it is impossible to say that 'one is worth more than the other'. For example, think of the categorical variable animals_vector with the categories "Elephant", "Giraffe", "Donkey" and "Horse". Here, it is impossible to say that one stands above or below the other. (Note that some of you might disagree ;-) ).
#In contrast, ordinal variables do have a natural ordering. Consider for example the categorical variable temperature_vector with the categories: "Low", "Medium" and "High". Here it is obvious that "Medium" stands above "Low", and "High" stands above "Medium".
# Animals - a nominal categorical variable
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature - ordinal categorical variable
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
print(factor_survey_vector)

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")
print(factor_survey_vector)

#Summarizing a factor
# Generate summary for survey_vector
summary(survey_vector)
# Generate summary for factor_survey_vector
summary(factor_survey_vector)

# Male
male <- factor_survey_vector[1]
print(male)

# Female
female <- factor_survey_vector[2]
print(female)


# Create speed_vector
speed_vector <- c("fast", "slow", "slow", "fast", "insane")

# Convert speed_vector to ordered factor vector
factor_speed_vector <-factor(speed_vector,ordered = TRUE,levels = c("slow", "fast", "insane"))

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)

# Factor value for second data analyst
da2 <- factor_speed_vector[2]
print(da2)

# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]
print(da5)

# Is data analyst 2 faster than data analyst 5?
da2 > da5


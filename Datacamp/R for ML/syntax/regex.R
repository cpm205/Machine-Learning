# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for "edu"
grepl("edu", emails)

# Use grep() to match for "edu", save result to hits
hits <- grep("edu", emails)
# Subset emails using hits
emails[hits]

# @, because a valid email must contain an at-sign.
#.*, which matches any character (.) zero or more times (*). Both the dot and the asterisk are metacharacters. You can use them to match any character between the at-sign and the ".edu" portion of an email address.
#\\.edu$, to match the ".edu" part of the email at the end of the string. The \\ part escapes the dot: it tells R that you want to use the . as an actual character.
# Use grepl() to match for .edu addresses more robustly
grepl("@.*\\.edu$", emails)

# Use grep() to match for .edu addresses more robustly, save result to hits
hits <- grep("@.*\\.edu$", emails)

# Subset emails using hits
emails[hits]

# Use sub() to convert the email domains to datacamp.edu
sub("@.*\\.edu$", "@datacamp.edu",emails)
# Assign a variable 'female_avg' as the average female height.
female_avg <- 64

# Assign a variable 'female_sd' as the standard deviation for female heights.
female_sd <- 3

## EX 1
# Using variables 'female_avg' and 'female_sd', calculate the probability that a randomly selected female is shorter than 5 feet. Print this value to the console.

pnorm(60, female_avg,female_sd)

##EX2
# Using variables 'female_avg' and 'female_sd', calculate the probability that a randomly selected female is 6 feet or taller. Print this value to the console.

1-pnorm(72, female_avg,female_sd)

## EX3
# Using variables 'female_avg' and 'female_sd', calculate the probability that a randomly selected female is between the desired height range. Print this value to the console.
# Height Range is 61 to 67 inches

pnorm(67, female_avg,female_sd) - pnorm(61, female_avg,female_sd)


####EX5
# To a variable named 'taller', assign the value of a height that is one SD taller than average.

taller <- female_avg + female_sd

# To a variable named 'shorter', assign the value of a height that is one SD shorter than average.

shorter <- female_avg - female_sd

# Calculate the probability that a randomly selected female is between the desired height range. Print this value to the console.

pnorm(taller, female_avg,female_sd) - pnorm(shorter, female_avg,female_sd)

##EX 6
# Assign a variable 'male_avg' as the average male height.
male_avg <- 69

#Assign a variable 'male_sd' as the standard deviation for male heights.
male_sd <- 3

# Determine the height of a man in the 99th percentile of the distribution.
qnorm(.99, male_avg, male_sd)
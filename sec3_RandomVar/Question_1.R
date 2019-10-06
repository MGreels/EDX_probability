### This is a 6-part question asking you to determine some probabilities of 
### what happens when a student guessed for all of their answers on the SAT. 
### Use the information below to inform your answers for the following questions

### An old version of the SAT college entrance exam had a -0.25 point penalty 
### for every incorrect answer and awarded 1 point for a correct answer. 
### The quantitative test consisted of 44 multiple-choice questions 
### each with 5 answer choices. Suppose a student chooses answers by guessing 
### for all questions on the test.

##Question 1a - what is the probability

prob_right <- 0.2
prob_wrong <- 1 - prob_right
n<-44

EV <- -.25*prob_wrong + 1*prob_right

##Question 1D

se <- sqrt(n) * (1 + 0.25)*sqrt(prob_right*prob_wrong)

##Question 1E - Use the CLF to determine the probability of a guessing student 
###getting >8 points

1 - pnorm(8,EV,se)

## Question 1F

set.seed(21, sample.kind = "Rounding")
B <- 10000
S <- replicate(B, {
        sum(sample(c(1, -.25), 
                    n, 
                    replace = T, 
                    prob = c(prob_right,prob_wrong)))
})

mean(S>8)

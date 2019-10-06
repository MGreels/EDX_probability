

### Question 2A
### Suppose that the number of multiple choice options is 4 and that 
### there is no penalty for guessing - that is, an incorrect question 
### gives a score of 0.

### What is the expected value of the score when guessing on this new test?

score_30 <- function(prob_right4){
        prob_wrong4 <- 1-prob_right4
        n<- 44
        
        EV <- n*(1*prob_right4 + 0*prob_wrong4)
        se <- sqrt(n) * (1)*sqrt(prob_right4*prob_wrong4)
        
        print(c(prob_right4,(1 - pnorm(35, EV, se))))
}

p <- seq(0.25, 0.95, 0.05)

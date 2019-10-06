### The company cannot predict whether the pandemic death rate will stay 
### stable. Set the seed to 29, then write a Monte Carlo simulation that 
### for each of  B=10000  iterations:
        
##      randomly changes  p  by adding a value between -0.01 and 0.01 with 
###     sample(seq(-0.01, 0.01, length = 100), 1)

###     uses the new random  p  to generate a sample of  n=1,000  policies 
###     with premium x and loss per claim  l=−150000 

###     returns the profit over  n  policies (sum of random variable)

payout <- -150000
prem <- 3268  ###Calculated from Question 5
n <- 1000
B<- 10000

set.seed(29, sample.kind = "Rounding")

S <- replicate(B, {
        p_die <- .015 + sample(seq(-0.01, 0.01, length = 100), 1)
        p_live <- 1-p_die
        sum(sample(c(payout, prem), 
                   n, 
                   replace = T, 
                   prob = c(p_die,p_live)))
}
)


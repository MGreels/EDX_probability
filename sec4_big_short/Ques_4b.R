## Set the seed to 27, then run a Monte Carlo simulation of your sampling model 
##with 10,000 replicates to simulate the range of profits/losses over 
## 1,000 loans

### (IMPORTANT! If you use R 3.6 or later, you will need to use the command 
## set.seed(x, sample.kind = "Rounding") instead of set.seed(x). 
## Your R version will be printed at the top of the Console window when you 
## start RStudio.)

### What is the reported profit (or loss) in millions 
## (that is, divided by  106 )?

payout <- -150000
prem <- 3268  ###Calculated from Question 5
n <- 1000
p_die <- .015
p_live <- 1-p_die
B<- 10000

set.seed(27, sample.kind = "Rounding")

S <- replicate(B, {
        sum(sample(c(payout, prem), 
           n, 
           replace = T, 
           prob = c(prob_die,prob_live)))
}
)

print(mean(S< -1000000))
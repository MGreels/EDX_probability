## Define a sampling model for simulating the total profit over 1,000 
## loans with probability of claim p_loss = .015, loss of -$150,000 on a claim, 
## and profit of $1,150 when there is no claim. Set the seed to 25, then 
## run the model once.

### (IMPORTANT! If you use R 3.6 or later, you will need to use the command 
## set.seed(x, sample.kind = "Rounding") instead of set.seed(x). 
## Your R version will be printed at the top of the Console window when you 
## start RStudio.)

### What is the reported profit (or loss) in millions 
## (that is, divided by  106 )?

payout <- -150000
prem <- 1150
n <- 1000
p_die <- .015
p_live <- 1-p_die

set.seed(25, sample.kind = "Rounding")

sum(sample(c(payout, prem), 
           n, 
           replace = T, 
           prob = c(prob_die,prob_live)))
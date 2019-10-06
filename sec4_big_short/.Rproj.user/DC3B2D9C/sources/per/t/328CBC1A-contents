## Calculate the premium required for a 5% chance of losing money given  
## n=1000  loans, probability of death  p=0.015 , and loss per claim  
## l=−150000 . Save this premium as x for use in further questions.

p_die <- .015
p_live <- 1-p_die
n <- 1000
payout <- -150000
z <- qnorm(.05)
B<-10000

x <-    (z*payout*sqrt(n*p_die*p_live)-
                 n*payout*p_die)/
        (z*sqrt(n*p_die*p_live)+ n*p_live)

## expected provid per policy at this rate

EV <- p_die*payout + p_live*x

set.seed(28, sample.kind = "Rounding")

S <- replicate(B, {
        sum(sample(c(payout, x), 
                   n, 
                   replace = T, 
                   prob = c(p_die,p_live)))
}
)

print (mean(S<0))
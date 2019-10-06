### A casino offers a House Special bet on roulette, which is a bet on 
### five pockets (00, 0, 1, 2, 3) out of 38 total pockets. The bet pays 
### out 6 to 1. In other words, a losing bet yields -$1 and a successful bet 
### yields $6. A gambler wants to know the chance of losing money if 
### he places 500 bets on the roulette House Special.

### The following 7-part question asks you to do some calculations 
### related to this scenario.

### 

p_win <- 5/38
p_lose <- 1-p_win

pay_win <- 6
pay_lose <- -1

n <-500

EV1 <- pay_win*p_win + p_lose*pay_lose

se1 <- abs(pay_win - pay_lose) * sqrt(p_win*p_lose)

EV_500 <- EV1*n

se_500 <- sqrt(n)*se1

se_500a <- se_500/n

lose_prob <- pnorm(0, EV_500, se_500)
win_prob <- 1 - lose_prob

payout <- -150000
prem <- 1150
n <- 1000
p_m50 <- .015

ev_pan <- n*(prem*(1-p_m50) + payout*p_m50)

se_pan <-  sqrt(n) * abs(prem - payout)*sqrt(p_m50*(1-p_m50))

prob_loss <- pnorm(0, ev_pan, se_pan)

prob_losmil <- pnorm(-1000000, ev_pan, se_pan)

##p <- seq(.01, .03, .001)

lose_prob <- function(prob_die){
        
        prob_live<- 1-prob_die      
        payout <- -150000
        prem <- 1150
        n <- 1000
        EV <- n*(payout*prob_die + prem*prob_live)
        se <- sqrt(n) * abs(prem-payout)*sqrt(prob_live*prob_die)
        
        print(c(prob_die, pnorm(0, EV, se)))
}

##p <- seq(.01, .03, .0025)

lose_mil <- function(prob_die){
        
        prob_live<- 1-prob_die      
        payout <- -150000
        prem <- 1150
        n <- 1000
        EV <- n*(payout*prob_die + prem*prob_live)
        se <- sqrt(n) * abs(prem-payout)*sqrt(prob_live*prob_die)
        
        print(c(prob_die, pnorm(-1000000, EV, se)))
}

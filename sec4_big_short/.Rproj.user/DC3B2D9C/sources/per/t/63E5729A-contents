f50_ind <- which(death_prob$age == "50" & death_prob$sex == "Female")

p_f50 <- death_prob$prob[f50_ind]

prem <- 1150
payout <- -150000

EV <- prem*(1-p_f50) + payout*p_f50

se <-  abs(prem - payout)*sqrt(p_f50*(1-p_f50))


## Question 1d & 1e

n<- 1000

EV_all <- n*EV
se_all <- sqrt(n) * se


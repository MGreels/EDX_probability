m50_ind <- which(death_prob$age == "50" & death_prob$sex == "Male")

p_m50 <- death_prob$prob[m50_ind]
us <- 700000
a <- 150000
n <- 1000

b <- (us+n*p_m50*a)/(n*(1-p_m50))

se <-  sqrt(n)*abs(b+a)*sqrt(p_m50*(1-p_m50))
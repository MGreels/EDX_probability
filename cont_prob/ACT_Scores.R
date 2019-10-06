set.seed(16, sample.kind = "Rounding")

## Question 1a

act_scores <- rnorm(10000, 20.9, 5.7)
mean(act_scores)
## Question 1b

sd(act_scores)

## Question 1c

sum(act_scores >= 36)

##Question 1d
sum(act_scores > 30)/length(act_scores)

##Wuestion 1e

sum(act_scores <= 10)/length(act_scores)

##Question 2a

x <- c(1:36)
plot(dnorm(x, 20.9, 5.7))

##Question 3A
score_m <- mean(act_scores)
score_sd <- sd(act_scores)
z <- score_m + 2*score_sd
sum(act_scores > z)/length(act_scores)

##Question 3b
z

##Question 3c

qnorm(.975, score_m, score_sd)

## Question 4a

pnorm(x,score_m,score_sd)

## Question 4b



## Question 4C
p <- seq(0.01, 0.99, 0.01)
sample_quantiles <- quantile(act_scores, p)

## Question 4d
theoretical_quantiles <- qnorm(p, 20.9, 5.7)
df <- data.frame(p, sample_quantiles, theoretical_quantiles)
scatter <- ggplot(df, aes(x=theoretical_quantiles, y=sample_quantiles)) + 
        geom_point()

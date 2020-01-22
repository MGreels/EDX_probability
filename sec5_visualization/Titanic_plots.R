options(digits = 3)    # report 3 significant digits
library(tidyverse)
library(titanic)
titanic <- titanic_train %>%
        select(Survived, Pclass, Sex, Age, SibSp, Parch, Fare) %>%
        mutate(Survived = factor(Survived),
               Pclass = factor(Pclass),
               Sex = factor(Sex))

plot <- titanic %>% ggplot(aes(Age, fill=Survived, y = ..count..)) + 
        geom_density(alpha = .2, bw = 0.75) #+
        #facet_grid(Pclass ~ .)

print(plot)

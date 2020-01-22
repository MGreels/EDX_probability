library(tidyverse)
library(dslabs)
data(stars)
options(digits = 3)   # report 3 significant digits

plot<-stars %>% ggplot(aes(temp, magnitude, color = type)) +
        scale_y_reverse() +
        scale_x_continuous(trans = "log10") + 
        geom_point()
        

print(plot)
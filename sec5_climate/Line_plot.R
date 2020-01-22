library(tidyverse)
library(dslabs)
data(temp_carbon)
data(greenhouse_gases)
data(historic_co2)

p <- temp_carbon %>% filter(!is.na(temp_anomaly)) %>%
        ggplot(aes(year)) +
        geom_line(aes(y=temp_anomaly)) +
        geom_line(aes(y=land_anomaly), col = "green") +
        geom_line(aes(y=ocean_anomaly), col = "blue") +
        geom_hline(aes(yintercept = 0), col = "red") + 
        ylab("Temperature anomaly (degrees C)") +
        ggtitle("Temperature anomaly relative to 20th century mean, 1880-2018") +
        geom_text(aes(x = 2000, y = 0.05, label = "20th century mean"), col = "blue")


plot(p)
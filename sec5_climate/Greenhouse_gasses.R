library(tidyverse)
library(dslabs)
data(temp_carbon)
data(greenhouse_gases)
data(historic_co2)

p <- greenhouse_gases %>%
        ggplot(aes(year, concentration)) +
        geom_line() +
        facet_grid(gas ~., scales = "free") +
        geom_vline(aes(xintercept = 1850)) +
        ylab("Concentration (ch4/n2o ppb, co2 ppm)") +
        ggtitle("Atmospheric greenhouse gas concentration by year, 0-2000")


plot(p)
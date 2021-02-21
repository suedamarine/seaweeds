# import libraries
library(tidyverse)

# seaweed biomass expressed as fresh weight (g)  length (cm) - not taking season into account
laminaria_fw <- function(l){
  0.00949 * l^1.782
}

# generate sequence from 0-160cm with 5cm intervals and predicted mass
fw_seq <- tibble(l = seq(0,160,5), w = laminaria_fw(l))

# plot to see what it looks like
fw_seq %>%
  ggplot(aes(l, w)) +
  geom_line(linetype = "dashed") +
  geom_point()

# seaweed biomass expressed as dry weight (g) length (cm) - not taking season into account
laminaria_dw <- function(l){
  0.00387 * l^1.469
}

# generate sequence from 0-160cm with 5cm intervals and predicted mass
dw_seq <- tibble(l = seq(0,160,5), w = laminaria_dw(l))

# plot to see what it looks like
dw_seq %>%
  ggplot(aes(l, w)) +
  geom_line(linetype = "dashed") +
  geom_point()



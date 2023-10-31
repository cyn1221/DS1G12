library(readr)
library(tidyverse)

boxplot <- function(var) {
  ## read data
  data(DRG_data)
  plot <- DRG_data %>%
    ggplot(aes(x=DRG.Definition,y=get(var))) +
    geom_boxplot() +
    labs(title = paste0("Boxplot of ", var, " by DRG Code"),
           y = paste0(var))
}

boxplot('Average Medicare Payments')

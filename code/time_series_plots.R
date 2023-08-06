time_series_plots <- function(log_data){
  library(tidyverse)
  library(dplyr)
  library(tayloRswift)
  
  plotData <- dplyr::select(log_data, c(DATE, QDP, PRDP, PRDNP, PRATIO, YR)) %>% 
    rename(Year = DATE, "Quantity legal cigarettes (sticks, millions)" = QDP, "Illicit cigarette price (Rands)" = PRDNP, "Legal cigarette price (Rands)" = PRDP, "Price ratio (legal/illicit)" = PRATIO, "Real disposable income" = YR)
  
  gathered <- plotData %>% 
    gather(Variable, Value, 2:6)
  
  gathered %>% 
    ggplot(aes(x = Year, y = Value, color = Variable)) +
    geom_line(show.legend = FALSE) +
    scale_color_taylor(palette = "taylorSwift") +
    theme_minimal() +
    facet_wrap(~Variable, ncol = 2, scales = "free_y") +
    labs(y = "") +
    theme(axis.title.y = element_blank(), 
          axis.title.x = element_blank(),
          axis.text = element_text(size = 7),
          strip.text = element_text(size = 9)
          )

}


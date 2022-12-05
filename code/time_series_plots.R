time_series_plots <- function(log_data){
  library(tidyverse)
  plotData <- select(log_data, c(DATE, QDP, PRDP, PRDNP, PRATIO)) %>% 
    rename(Year = DATE, "Quantity demanded of legal cigarettes (sticks, millions)" = QDP, "Illicit cigarette price (Rands)" = PRDNP, "Legal cigarette price (Rands)" = PRDP, "Price ratio (Legal/Illicit)" = PRATIO,)
  
  wihan_gathered <- plotData %>% 
    gather(Variable, Value, 2:5)
  
  wihan_gathered %>% 
    ggplot(aes(x = Year, y = Value, color = Variable)) +
    geom_line(show.legend = FALSE) +
    theme_minimal() +
    facet_wrap(~Variable, ncol = 2, scales = "free_y") +
    labs(y = "")

  
  
  
}

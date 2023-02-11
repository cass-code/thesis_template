time_series_plots_log <- function(log_data){
  library(tidyverse)
  library(dplyr)
  
  plotDataLog <- dplyr::select(log_data, c(DATE, log_QDP, log_PRDP, log_PRDNP, log_PRATIO, log_YR)) %>% 
    rename(Year = DATE, "Quantity legal cigarettes (sticks, millions)" = log_QDP, "Illicit cigarette price (Rands)" = log_PRDNP, "Legal cigarette price (Rands)" = log_PRDP, "Price ratio (Legal/Illicit)" = log_PRATIO, "Real disposable income" = log_YR)
  
  wihan_gathered_log <- plotDataLog %>% 
    gather(Variable, Value, 2:6)
  
  wihan_gathered_log %>% 
    ggplot(aes(x = Year, y = Value, color = Variable)) +
    geom_line(show.legend = FALSE) +
    theme_minimal() +
    facet_wrap(~Variable, ncol = 2, scales = "free_y") +
    labs(y = "") +
    theme(axis.title.y = element_blank(), 
          axis.title.x = element_blank(),
          axis.text = element_text(size = 5),
          strip.text = element_text(size = 7)
    )
  
  
  
}
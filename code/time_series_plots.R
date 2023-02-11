time_series_plots <- function(vecm_data){
  library(tidyverse)
  library(dplyr)
  
  plotData <- dplyr::select(vecm_data, c(DATE, QDP, PRDP, PRDNP, PRATIO, YR)) %>% 
    rename(Year = DATE, "Quantity legal cigarettes (sticks, millions)" = QDP, "Illicit cigarette price (Rands)" = PRDNP, "Legal cigarette price (Rands)" = PRDP, "Price ratio (Legal/Illicit)" = PRATIO, "Real disposable income" = YR)
  
  wihan_gathered <- plotData %>% 
    gather(Variable, Value, 2:6)
  
  wihan_gathered %>% 
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

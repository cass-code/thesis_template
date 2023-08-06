data_clean <- function(data){
  
  library(tidyverse)
  library(dplyr)
  
  # selecting the data and logging the variables then slicing off the top 99 values for the sample period
  log_data <- data %>% dplyr::select(DATE, QDP, PRDP, PRDNP, PRATIO,	YR, Excise) %>%
    mutate(log_QDP = log(QDP), log_PRDP = log(PRDP), log_PRDNP = log(PRDNP), log_PRATIO = log(PRATIO), log_YR = log(YR), log_Excise = log(Excise)) %>%
    slice_head(n=99) 
  
  # return logged data set
  log_data
}


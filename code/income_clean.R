income_clean <- function(data){
  library(tidyverse)
  library(dplyr)
  monthly_clean <- data %>% slice_head(n=111) 
  monthly_clean 
}
interpolate <- function(data){
  
  library(nowcasting)
  library(dplyr)
  library(tidyverse)
  
  incomeQuarterly <- ts(data$REAL,start=c(2011,3),frequency=4)
  disposable_income <- qtr2month(incomeQuarterly, reference_month = 3, interpolation = TRUE)
  
  # incomeQuarterly <- ts(incomeData$REAL,start=c(2011,3),frequency=4)
  disposable_income <- as.data.frame(disposable_income) 
  colnames(disposable_income)[1] = "REAL"
  
  # return monthly series
  date <- as.data.frame(seq(as.Date("2011/04/01"), by = "month", length.out = 121))
  colnames(date)[1] = "DATE" #create a date column and call it "DATE"
  
  disposable_income <-  disposable_income %>% mutate(date, .before=REAL) %>% slice(10:108) %>% mutate(log_REAL = log(REAL)) 
  disposable_income

}



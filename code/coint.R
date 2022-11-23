coint <- function(log_data){
  
  library(urca)
  library(tidyverse)
  library(tseries)
  library(dplyr)
  
  # creating time series objects
  log_QDP <- ts(log_data$log_QDP, start=c(2012, 1), end=c(2020, 3), frequency=12)
  log_PRATIO <- ts(log_data$log_PRATIO, start=c(2012, 1), end=c(2020, 3), frequency=12)
  log_Real <- ts(log_data$log_Real, start=c(2012, 1), end=c(2020, 3), frequency=12)
  log_YR <- ts(log_data$log_YR, start=c(2012, 1), end=c(2020, 3), frequency=12)
  
  # testing for cointegration
  dset <- cbind(log_QDP, log_PRATIO, log_Real, log_YR)
  
  # choose 10 - 1 = 9 lags
  
  # run Johansen test where null is that there is at least r cointegrating relationships
  # if we reject H0 for r<= 0 then it means we reject that there is are 0 or less than zero cointegrating relationships
  # both tests show that there is at least 1 cointegrating relationship
  cjtest2 <- ca.jo(dset, type = "eigen", ecdet = "none", K=2) # for r<=1, test stat is 24.76 > 22.00 so reject at 5%
  b<-summary(cjtest2)
  teststat <- data.frame(b@teststat)
  c<- data.frame(b@cval)
  f <- data.frame(teststat, c) %>% rename("Test Statistic" = b.teststat, "10%" = X10pct, "5%" = X5pct, "1%" = X1pct)
  #row.names(f) <- c("r<=3", "r<=2", "r<=1", "r=0")
  f
}
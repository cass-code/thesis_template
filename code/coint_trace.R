coint_trace <- function(dset){
  
  library(urca)
  library(tidyverse)
  library(tseries)
  library(dplyr)
  
  # run Johansen test where null is that there is at least r cointegrating relationships
  # if we reject H0 for r<= 0 then it means we reject that there is are 0 or less than zero cointegrating relationships
  # both tests show that there is at least 1 cointegrating relationship
  
  cjtestTrace <- ca.jo(dset, type = "trace", ecdet = "const", K=2) # for r<=1, test stat is 24.76 > 22.00 so reject at 5%
  traceSumm <- summary(cjtestTrace)
  teststats <- data.frame(traceSumm@teststat)
  c<- data.frame(traceSumm@cval)
  f <- data.frame(teststats, c) %>% rename("Test Statistic" = traceSumm.teststat, "10%" = X10pct, "5%" = X5pct, "1%" = X1pct)
  row.names(f) <- c("r<=2", "r<=1", "r=0")
  f
}
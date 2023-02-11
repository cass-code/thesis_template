coint_eigen <- function(dset){
  
  library(urca)
  library(tidyverse)
  library(tseries)
  library(dplyr)
  
  # run Johansen test where null is that there is at least r cointegrating relationships
  # if we reject H0 for r<= 0 then it means we reject that there is are 0 or less than zero cointegrating relationships
  # both tests show that there is at least 1 cointegrating relationship
  
  cjtestEigen <- ca.jo(dset, type = "eigen", ecdet = "const", K=2) # for r<=1, test stat is 24.76 > 22.00 so reject at 5%
  eigenSumm <- summary(cjtestEigen)
  teststats <- data.frame(eigenSumm@teststat)
  eigendata <- data.frame(eigenSumm@cval)
  eigenFinal <- data.frame(teststats, eigendata) %>% rename("Test Statistic" = eigenSumm.teststat, "10%" = X10pct, "5%" = X5pct, "1%" = X1pct)
  row.names(eigenFinal) <- c("r<=2", "r<=1", "r=0")
  eigenFinal
} 
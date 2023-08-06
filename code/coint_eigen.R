coint_eigen <- function(dsetYRdummy){
  
  dset <- dsetYRdummy
  library(urca)
  library(tidyverse)
  library(tseries)
  library(dplyr)
  
  # run Johansen test where null is that there is at least r cointegrating relationships
  # if we reject H0 for r<= 0 then it means we reject that there is are 0 or less than zero cointegrating relationships
  # both tests show that there is at least 1 cointegrating relationship
  
  cjtestEigen <- ca.jo(dset, type = "eigen", ecdet = "const", K=3) 
  eigenSumm <- summary(cjtestEigen)
  teststats <- data.frame(eigenSumm@teststat)
  eigendata <- data.frame(eigenSumm@cval)
  eigenFinal <- data.frame(teststats, eigendata) %>% rename("Statistic" = eigenSumm.teststat, "10%" = X10pct, "5%" = X5pct, "1%" = X1pct)
  eigenFinal
} 


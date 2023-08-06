coint_struc <- function(dsetYRdummy){
  
  dset <- dsetYRdummy
  library(urca)
  library(dplyr)
  
  cjtestStruc <- urca::cajolst(dset, K=2, trend = FALSE) 
  strucSumm <- summary(cjtestStruc)
  teststats1 <- data.frame(strucSumm@teststat)
  strucCoint <- data.frame(strucSumm@cval)
  strucFinal <- data.frame(teststats1, strucCoint)
  strucFinal <- strucFinal %>% rename("Statistic" = strucSumm.teststat, "10%" = X10pct, "5%" = X5pct, "1%" = X1pct)
  strucFinal <- as.data.frame(strucFinal)
  return(strucFinal)
} 


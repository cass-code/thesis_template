unit_struc_test_diff <- function(dsetYRdummy){
  library(tsm)
  library(vars)
  library(huxtable)
  library(tseries)
  
  
  PratioDiff <- diff(dsetYRdummy$log_PRATIO, differences = 1)
  
  #Zivot-Andrews Unit Root Test
  unit_struc1 <- ur.za(PratioDiff, model="both", lag=0)
  sumUnitStruc1 <- summary(unit_struc1)
  
  strucTestStat1 <- sumUnitStruc1@teststat
  strucCval1 <- sumUnitStruc1@cval
  strucResults1 <- list(strucTestStat1, strucCval1)
  
  return(strucResults1)
}



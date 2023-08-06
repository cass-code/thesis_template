unit_struc_test <- function(dsetYRdummy){
library(tsm)
library(vars)
  library(huxtable)

#Zivot-Andrews Unit Root Test
  unit_struc <- ur.za(dsetYRdummy$log_PRATIO, model="both", lag=0)
  sumUnitStruc <- summary(unit_struc)

 strucTestStat <- sumUnitStruc@teststat
 strucCval <- sumUnitStruc@cval
 strucResults <- list(strucTestStat, strucCval)
 
 return(strucResults)
}



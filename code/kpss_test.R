#kpss

kpss_test <- function(dset){

  library(tseries)

  Qkp <- kpss.test(dset[, 1], null="Level")
  Rkp <- kpss.test(dset[, 2], null="Level")
  Ykp <- kpss.test(dset[, 3], null="Level")
  
  kp_results <- list(Qkp, Rkp, Ykp) 
  return(kp_results)
  
}


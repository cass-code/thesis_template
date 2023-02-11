pp_test <- function(dset){
  
  library(tseries)

  Qpp <- pp.test(dset[, 1], lshort = TRUE)
  Rpp <- pp.test(dset[, 2], lshort = TRUE)
  Ypp <- pp.test(dset[, 3], lshort = TRUE)
  
  pp_results <- list(Qpp, Rpp, Ypp) 
  return(pp_results)
   
  }


#kpss

kpss_test_diff <- function(dset){
  
  library(tseries)
  
  Qdiff <- diff(dset[, 1], differences = 1)
  Pdiff <- diff(dset[, 2], differences = 1)
  Ydiff <- diff(dset[, 3], differences = 1)

  
  Qkpdiff <- kpss.test(Qdiff, null="Level")
  Pkpdiff <- kpss.test(Pdiff, null="Level")
  Ykpdiff <- kpss.test(Ydiff, null="Level")
  
  kp_results_diff <- list(Qkpdiff, Pkpdiff, Ykpdiff) 
  return(kp_results_diff)
  
}
  
  

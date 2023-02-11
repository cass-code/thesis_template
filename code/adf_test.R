adf_test <- function(dset){
  
  library(tseries)
  Q <- adf.test(dset[, 1])
  R <- adf.test(dset[, 2])
  Y <- adf.test(dset[, 3])
  
  dickey_results <- list(Q, R, Y) 
  return(dickey_results)
}


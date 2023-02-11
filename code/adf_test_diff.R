adf_test_diff <- function(dset){
  
  library(tseries)
  
  
  Qdiff <- diff(dset[, 1], differences = 1)
  Pdiff <- diff(dset[, 2], differences = 1)
  Ydiff <- diff(dset[, 3], differences = 1)
  
  Q <- adf.test(Qdiff)
  R <- adf.test(Pdiff)
  Y <- adf.test(Ydiff)
  
  dickey_results <- list(Q, R, Y) 
  return(dickey_results)
}

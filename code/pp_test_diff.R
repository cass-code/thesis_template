pp_test_diff <- function(dset){
  library(tseries)
  
  Qdiff <- diff(dset[, 1], differences = 1)
  Pdiff <- diff(dset[, 2], differences = 1)
  Ydiff <- diff(dset[, 3], differences = 1)
  
  
  # Phillips Perron
  
 Qppdiff <- pp.test(Qdiff)
 Pppdiff <- pp.test(Pdiff)
 Yppdiff <- pp.test(Ydiff)
 
 pp_results_diff <- list(Qppdiff, Pppdiff, Yppdiff) 
 return(pp_results_diff)
  
}
  

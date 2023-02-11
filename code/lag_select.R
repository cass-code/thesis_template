lag_select <- function(dset){
  
  library(vars)
  lags <- VARselect(dset, type = "both", lag.max = 2)

  lags$selection
   
  return()
}
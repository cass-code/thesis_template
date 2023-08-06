lag_select <- function(dset){
  
  library(dplyr)
  
  #get optimal lag selection
  dataa <- dsetYRdummy %>% dplyr::select(log_QDP,log_PRATIO,log_YR, dummy)
  library(vars)
  lags <- VARselect(dsetYRdummy, type = "const", lag.max = 3)

  lagSelect <- t(as.data.frame(lags$selection))
  lagTest <- t(as.data.frame(lags$criteria))
  lagList <- list(lagSelect, lagTest)
   
  return(lagList)
}
vecm_final_short <- function(dsetYRdummy){
  library(vars)
  library(urca)
  library(tsDyn)
  library(dplyr)
  
  dsettrim <- dsetYRdummy
  dsettrim <- dsettrim %>% dplyr::select(log_QDP, log_PRATIO, dummy)
  
  VARselect(dsettrim, type = "const", lag.max = 3)
  
  cointest <- ca.jo(dsettrim, K=2, type = "trace", ecdet = "const")
  vecmYRdummy <- cajorls(cointest)
  #summary(cointest)
  
  return(vecmYRdummy)
  
}

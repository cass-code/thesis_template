season_QDP <- function(vecm_dataframeYR){
  
  library(forecast)
  
  QDP <- ts(vecm_dataframeYR$log_QDP, start = c(2012, 1), frequency = 12)
  decompose <- decompose(QDP)
  deseason <- seasadj(decompose)
  #plot(deseason)
  dsetYRdummySeason <- log_data %>% dplyr::select(log_PRATIO,log_YR) 
  dsetYRdummySeason$QDPseason <- deseason
  dsetYRdummySeason$dummy <- as.numeric(dsetYRdummy$dummy2018)
  
  return(dsetYRdummySeason)
}

dataset_dummy_YR_lag_Ex <- function(dsetYRdummy, log_data){

library("dplyr")
dsetYRdummyLag <- dsetYRdummy
dsetYRdummyLag$lagPRATIO <- dplyr::lag(dsetYRdummyLag$log_PRATIO, n=1)
dsetYRdummyLag$lag2PRATIO <- dplyr::lag(dsetYRdummyLag$lagPRATIO, n=1)

dsetYRdummyEx <- log_data %>% 
  mutate(exciseRatio = log_data$log_Excise / log_data$log_PRDNP)

dsetYRdummyEx <- dsetYRdummyEx %>% dplyr::select(exciseRatio)
dsetYRdummyLagEx <- dsetYRdummyLag
dsetYRdummyLagEx$exciseRatio <- dsetYRdummyEx$exciseRatio 

return(dsetYRdummyLagEx)              
}

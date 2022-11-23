tidy_vecm_results <- function(vecm_list){
  
  vecm_shortrun <- vecm2[["bigcoefficients"]] %>% as.data.frame()
  vecm_longrun <- vecm2$model.specific$beta %>% as.data.frame()
  vecm_list <- list(vecm_shortrun, vecm_longrun)
  return(vecm_list)
}
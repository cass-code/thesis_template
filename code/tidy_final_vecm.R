tidy_final_vecm <- function(vecmYRdummy){
  
  library(dplyr)
  vecm_coeff <- vecmYRdummy$rlm$coefficients %>% as.data.frame()
  vecm_longrun <- vecm2$model.specific$beta %>% as.data.frame()
  vecm_list <- list(vecm_shortrun, vecm_longrun)
  return(vecm_list)
}


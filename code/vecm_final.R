vecm_final <- function(dsetYRdummy){
library(vars)
library(urca)
library(tsDyn)
  
# vecmTS <- tsDyn::VECM(dsetYRdummy, lag = 2, estim = "ML")
# summary(vecmTS)
# vecmTSlong <- vecmTS$model.specific$S00
# summary(vecmTSlong)

cointest <- ca.jo(dsetYRdummy, K=3, type = "trace", ecdet = "const")
vecmYRdummy <- cajorls(cointest)
summary(cointest)

return(vecmYRdummy)

}


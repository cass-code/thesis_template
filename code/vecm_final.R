vecm_final <- function(dsetYRdummy){
library(vars)
library(urca)

cointest <- ca.jo(dsetYRdummy, K=3, type = "trace", ecdet = "const")
vecmYRdummy <- cajorls(cointest)

return(vecmYRdummy)

}


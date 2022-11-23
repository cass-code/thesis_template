# VECM script

vecm_testing <- function(vecm_dataframe) {
library(tsDyn)
# lagSelect <- VARselect(vecm_dataframe, lag.max = 2, type = "const") 
# lagSelect$selection
# lagSelect$criteria
# 
# cstestt <- ca.jo(vecm_dataframe, type = "trace", ecdet = "const", K=2)
# summary(cstestt)
# 
# csteste <- ca.jo(vecm_dataframe, type = "eigen", ecdet = "const", K=2)
# summary(csteste)

model1 <- VECM(vecm_dataframe, 2, r=1, estim="ML")
sumMod1 <- summary(model1)
return(sumMod1)
}
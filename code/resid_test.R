resid_test <- function(dsetYRdummy){

library(urca)
library(vars)
library(tsDyn)
library(forecast)
library(dplyr)

cointest1 <- ca.jo(dsetYRdummy, K=3, type = "eigen", ecdet = "const", spec = "longrun")
vecmYRdummy1 <- cajorls(cointest1)
model1Var <-vec2var(cointest1, r=1)

#autocorreclation
serialTest30 <- serial.test(model1Var, lags.pt = 30, type="PT.asymptotic")
serialTest30

serialTestTable <- as.data.frame(tidy(serialTest30[[2]]))
serialTestTable$lags <- c("30")
serialTestTable <- serialTestTable %>% 
                   mutate(across(c('p.value'), round, 2)) %>% 
                   dplyr::select(method, statistic, parameter, p.value, lags) %>% dplyr::rename(" " = method, "Statistic" = statistic, "p-value" = p.value, "Parameter" = parameter, "Lags" = lags)
                  

serialTest15 <- serial.test(model1Var, lags.pt = 15, type="PT.asymptotic")
serialTest15

serialTestTable1 <- as.data.frame(tidy(serialTest15[[2]]))
serialTestTable1$lags <- c("15")
serialTestTable1 <- serialTestTable1 %>% 
  dplyr::select(method, statistic, parameter, p.value, lags) %>% 
  mutate(across(c('p.value'), round, 0)) %>% 
  rename(" " = method, "Statistic" = statistic, "p-value" = p.value, "Parameter" = parameter, "Lags" = lags)

serialTestTable1 <- rbind(serialTestTable1, serialTestTable)

#ARCH Test
ARCHtest<- arch.test(model1Var, lags.multi = 15, multivariate.only = TRUE)
ARCHtest

ARCHtestTable <- as.data.frame(tidy(ARCHtest[[2]]))

ARCHtestTable$lags <- c("15")
ARCHtestTable <- ARCHtestTable %>% 
  dplyr::select(method, statistic, parameter, p.value, lags) %>%
  rename(" " = method, "Statistic" = statistic, "p-value" = p.value, "Parameter" = parameter, "Lags" = lags)

#Normality of residuals
NormalTest <- normality.test(model1Var)
NormalTest

a <- NormalTest[[2]]
a[[1]]

NormalTestTable <- as.data.frame(tidy(a[[1]]))

NormalTestTable <- NormalTestTable %>% 
  dplyr::select(method, statistic, parameter, p.value) %>% 
  rename(" " = method, "Statistic" = statistic, "p-value" = p.value, "Parameter" = parameter)

#Group diagnostic tests
residual_list <- list(serialTestTable1, ARCHtestTable, NormalTestTable)

return(residual_list)

}


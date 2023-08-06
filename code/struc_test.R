struc_test <- function(dataset) {
library(strucchange)
#Test for structural breakpoint at time 83
strucTestResult <- sctest(log_data$PRATIO ~ log_data$DATE, type = "Chow", point = 83)
strucTestResult
tidy(strucTestResult)

strucTable <- as.data.frame(tidy(strucTestResult))
strucTable$Alternative <- c("Structural breakpoint") # null = no breakpoint
strucTable <- strucTable %>% 
  mutate(across(c('p.value', 'statistic'), round, 2)) %>% 
  dplyr::select(method, statistic, p.value, Alternative) %>% dplyr::rename(" " = method, "Statistic" = statistic, "p-value" = p.value)

return(strucTable)

}
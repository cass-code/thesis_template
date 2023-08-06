resid_plot <- function(dsetYRdummy){
  library(tayloRswift)
  
  cointest1 <- ca.jo(dsetYRdummy, K=3, type = "eigen", ecdet = "const")
  vecmYRdummy1 <- cajorls(cointest1)
  model1Var <-vec2var(cointest1, r=1)
  
  residData <- as.data.frame(vecmYRdummy1$rlm$residuals)
  residData$Time <- 1:nrow(residData)
  residData <- residData %>% 
              rename("Quantity cigarettes" = log_QDP.d, "Price ratio" = log_PRATIO.d, "GDP per capita" = log_YR.d, "Strutural dummy" = dummy.d)
  
  
  gathered <- residData %>% 
    gather(Variable, Value, 1:4)
  
  gathered %>% 
    ggplot(aes(x = Time, y = Value, color = Variable)) +
    geom_line(show.legend = FALSE) +
    scale_color_taylor(palette = "taylorSwift") +
    theme_minimal() +
    facet_wrap(~Variable, ncol = 1, scales = "free_y") +
    labs(y = "") +
    theme(axis.title.y = element_blank(), 
          axis.title.x = element_blank(),
          axis.text = element_text(size = 7),
          strip.text = element_text(size = 9)
    )
    
}
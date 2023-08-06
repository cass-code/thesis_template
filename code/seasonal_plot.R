seasonal_plot <- function(dsetYRdummy){
  
  library(forecast)
  library("seasonal")
  
   QDP <- ts(dsetYRdummy$log_QDP, start = c(2012, 1), frequency = 12)
   decompose <- decompose(QDP)
   
   series <- as.data.frame(decompose[[1]])
   seasonal <- as.data.frame(decompose[[2]])
   trend <- as.data.frame(decompose[[3]])
   residual <- as.data.frame(decompose[[4]])
   
   seasonData <- cbind(series, seasonal, trend, residual)
   colnames(seasonData) <- c("Series", "Seasonal", "Trend", "Residual")
   seasonData$Time <- 1:nrow(seasonData)
  
  # deseason <- seasadj(decompose)
  # autoplot(decompose, labels = NULL, range.bars = NULL)
   
  gatheredSeason <- seasonData %>% 
    gather(Variable, Value, 1:4)
  
  gatheredSeason %>% 
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
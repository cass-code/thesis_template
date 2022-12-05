graph_cum_hh <- function(metroregion){
  
  quantec_regions11 <- quantec_regions %>% filter(Date == as.Date("2011-12-31"))
  
  random_palette <- round(runif(1,1,56),0)
  
  regions_compare_df <- census_regions %>% 
    select(Region, Income, NumHH, CumHH) %>% 
    mutate(Data = "Census") %>% 
    arrange(Region) %>% 
    bind_rows(quantec_regions11 %>% 
                select(Region, Income, NumHH, CumHH) %>% 
                mutate(Data = "Quantec") %>% 
                arrange(Region)) 

  regions_compare_df <- regions_compare_df %>% 
  merge(x = . , all.x = T, by = c("Region", "Data"),
        y = regions_compare_df %>% 
          group_by(Region, Data) %>% 
          summarise(max_CumHH = max(CumHH))) %>% 
    mutate(cum_share = CumHH/max_CumHH)
  
region_o_interest <- metroregion
 
 a <- regions_compare_df %>% filter(Region == region_o_interest) %>% 
   ggplot(aes(y = CumHH, x = Income, color = Data)) +
   geom_line(show.legend = T, size = 1, alpha = 0.7, aes(linetype = Data)) +
   labs(y = "Cumulative No. Households", x = "Average Household Income", title = paste("Cumulative Distribution:", region_o_interest)) +
   scale_y_continuous(labels = comma) +
   scale_x_continuous(labels = unit_format(unit = "K", scale = 1e-3)) +
   scale_color_manual(values = met.brewer(name = names(MetPalettes)[random_palette], type = "discrete")) +
   theme_minimal() +
   theme(legend.title = element_blank(), legend.position = "bottom", legend.text = element_text(size = 8),
         plot.title = element_text(size = 10, hjust = 0.5),
         axis.title = element_text(size = 8),
         axis.text =  element_text(size = 8),
         axis.title.y = element_text(margin = margin(t = 0, r = 10, b = 0, l = 0)),
         axis.title.x = element_text(margin = margin(t = 10, r = 0, b = 0, l = 0))
         )
 
 return(a)
  
}


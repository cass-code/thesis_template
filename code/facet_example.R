# Example of transformed quantec wards by Area
fig <- 
  quantec_wards11 %>% 
  filter(Area == "Blaauwberg") %>% 
  ggplot(aes(y = CumHH, x = Income, color = Ward)) +
  geom_line(show.legend = T, size = 1, alpha = 0.8) +
  # geom_label_repel(size = 2, aes(label = Ward), data = . %>% group_by(Ward) %>% filter(Income == max(Income)), show.legend = F) +
  facet_wrap(~Area, scales = "free_y", nrow = 4) +
  labs(caption = "Source: RHINC (2011)", y = "Cumulative Households by Ward", x = "Gross Annual Income (R)") +
  scale_y_continuous(labels = comma) +
  scale_x_continuous(labels = unit_format(unit = "K", scale = 1e-3)) +
  theme_minimal() +
  theme(
    legend.title = element_text(size = 5), legend.text = element_text(size = 5), 
    legend.position = "bottom",legend.direction="horizontal",
    plot.caption = element_text(size = 5),
    axis.title = element_text(size = 8),
    axis.text =  element_text(size = 6),
    axis.title.y = element_text(margin = margin(t = 0, r = 10, b = 0, l = 0)),
    axis.title.x = element_text(margin = margin(t = 10, r = 0, b = 0, l = 0)),
    strip.text.x = element_text(margin = margin(t = 2, r = 0, b = 2, l = 0), size = 7)) +
  scale_color_manual(values = met.brewer("Pissaro", type = "discrete")) +
  guides(colour = guide_legend(nrow = 1))
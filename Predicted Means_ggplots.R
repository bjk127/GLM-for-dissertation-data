library(tidyverse)

#Predicted means for article gender subject
tribble(
  ~'sibling_order', ~'mean', ~'CU', ~'CL', 
  'Older',           .9897,  .96,  1.0, 
  'Younger',          .7988,  .60, .99
) %>% 
  ggplot(., aes(x = sibling_order, y = mean)) + 
  geom_errorbar(aes(ymin = CL, ymax = CU), width = 0.2) + 
  geom_point(pch = 21, size = 4, fill = "lavenderblush4") + 
  ylim(0.55, 1) + 
  scale_color_brewer(palette = "Set1", name = "Sibling order") + 
  labs(y = "Predicted Means", x = "Sibling order") + 
  theme_bw(base_size = 18, base_family = "Times")

#Predicted means for article gender object
tribble(
  ~'sibling_order', ~'mean', ~'CU', ~'CL', 
  'Older',           .9691,  .927,  1.0, 
  'Younger',          .7576,  .59, .912
) %>% 
  ggplot(., aes(x = sibling_order, y = mean)) + 
  geom_errorbar(aes(ymin = CL, ymax = CU), width = 0.2) + 
  geom_point(pch = 21, size = 4, fill = "lavenderblush4") + 
  ylim(0.55, 1) + 
  scale_color_brewer(palette = "Set1", name = "Sibling order") + 
  labs(y = "Predicted Means", x = "Sibling order") + 
  theme_bw(base_size = 18, base_family = "Times")



#Predicted Means for verb formation
tribble(
  ~'sibling_order', ~'mean', ~'CU', ~'CL', 
  'Older',           .9919,  1.00,  .981, 
  'Younger',          .8079,  .896, .719
) %>% 
  ggplot(., aes(x = sibling_order, y = mean)) + 
  geom_errorbar(aes(ymin = CL, ymax = CU), width = 0.2) + 
  geom_point(pch = 21, size = 4, fill = "lavenderblush4") + 
  ylim(0.55, 1) + 
  scale_color_brewer(palette = "Set1", name = "Sibling order") + 
  labs(y = "Predicted Means", x = "Sibling order") + 
  theme_bw(base_size = 18, base_family = "Times")


#Predicted means for English lexical insertions
tribble(
  ~'sibling_order', ~'mean', ~'CU', ~'CL', 
  'Older',           .1034,  .032,  .175, 
  'Younger',          .2299,  .109, .349
) %>% 
  ggplot(., aes(x = sibling_order, y = mean)) + 
  geom_errorbar(aes(ymin = CL, ymax = CU), width = 0.2) + 
  geom_point(pch = 21, size = 4, fill = "lavenderblush4") + 
  ylim(0, 0.4) + 
  scale_color_brewer(palette = "Set1", name = "Sibling order") + 
  labs(y = "Predicted Means", x = "Sibling order") + 
  theme_bw(base_size = 18, base_family = "Times")

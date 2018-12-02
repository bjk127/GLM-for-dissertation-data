library(tidyverse)

Data <- read.csv("Vocab_BESA Scores.csv")

ggplot(Data, aes(x = English, y = Spanish, 
                 color = as.factor(Family), 
                 shape = as.factor(Sibling.Order))) + 
  geom_point(size = 3) + 
  scale_color_brewer(palette = "Set1")


Data %>% 
  gather(., key = test, val = score, -Subject, -Subject_ID, 
         -Family, -Sibling.Order, -E_BESA, -S_BESA) %>%
  ggplot(., aes(x = as.factor(Family), y = score, 
                dodge = test, shape = Sibling.Order, color = test, 
                label = Subject)) + 
    geom_text(size = 3, position = position_dodge(0.5)) + 
    geom_segment(aes(y = 0, yend = score, x = 0, xend = 0)) + 
    coord_flip() + 
    theme_bw() + 
  scale_color_brewer(palette = "Set1", name = "Sibling order") + 
  labs(y = "Vocabulary Percentile rank", x = "Family pair") + 
  theme_bw(base_size = 18, base_family = "Times")

  
  

Data %>% 
  gather(., key = test, val = score, -Subject, -Subject_ID, 
         -Family, -Sibling.Order, -E_BESA, -S_BESA) %>%
  ggplot(., aes(x = as.factor(Family), y = score, 
                color = Sibling.Order, 
                label = Subject)) + 
  facet_grid(. ~ test) +
  geom_text(size = 3, position = position_dodge(0.5)) + 
  geom_segment(aes(y = 0, yend = score, x = 0, xend = 0)) + 
  coord_flip() + 
  theme_bw()

Data %>% 
  gather(., key = test, val = score, -Subject, -Subject_ID, 
         -Family, -Sibling.Order, -E_BESA, -S_BESA) %>%
  ggplot(., aes(x = test, y = score, color = Sibling.Order, 
                dodge = Sibling.Order)) + 
  geom_jitter(alpha = 0.8, size = 1.5, pch = 21) +
  stat_summary(fun.data = mean_cl_boot, geom = "pointrange", size = 1,  
               position = position_dodge(0.5)) + 
  stat_summary(fun.y = mean, geom = "point", pch = 21, fill = 'white', 
               size = 4, 
               position = position_dodge(0.5)) + 
  ylim(0, 100) +
  scale_color_brewer(palette = "Set1", name = "Sibling order") + 
  labs(y = "Vocabulary percentile rank", x = "Expressive vocabulary") + 
  theme_bw(base_size = 18, base_family = "Times")


  


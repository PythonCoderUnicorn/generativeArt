
# genertaive art - 1

library(tidyverse)
library(ggplot2)
library(paletteer)

df = tibble(
  x = runif(1e4, min = 45, max= 1000),
  y = runif(1e4, min = 45, max= 1000),
  z = runif(1e4, min = 45, max= 1000)
)

df %>% 
  ggplot(
    aes(x= x,
        y = y,
        col= z)
  )+
  geom_point(show.legend = F, size= .1)+
  # scale_colour_viridis_c(option = 'C')+
  scale_color_paletteer_c("ggthemes::Blue-Teal")+
  # ggdark::dark_mode()
  theme_void()+
  theme(
    panel.grid.major = element_line(colour = NA),
    panel.grid.minor = element_line(colour = NA),
    panel.background = element_rect(fill = "black"),
    plot.background = element_rect(fill = "black")
  )



df2 = tibble(
  x = rnorm(100, mean = 78, sd= 10),
  y = rnorm(100, mean = 278, sd= 40),
  z = rnorm(100, 78, 10)
) 

p = df2 %>% 
  ggplot(
    aes(x= x^3 + 9,
        y= y*2 * y,
        col= z)
  )

p +
  # geom_density2d(col='grey30')+
  geom_point(show.legend = F)+
  # geom_line(show.legend = F)+
  # geom_curve( aes(xend= 45, yend= 89), show.legend = F)+
  # geom_curve( aes(xend= 89, yend= 45), show.legend = F)+
  # geom_curve( aes(xend= 5, yend= 89), show.legend = F)+
  # geom_spoke( aes(angle= 55, radius=90), show.legend = F)+
  # geom_density2d() +
  geom_path(show.legend = F)+
  scale_color_paletteer_c("grDevices::Purples 2")+
  # ggdark::dark_mode()+
  theme_void()+
  theme(
    panel.grid.major = element_line(colour = NA),
    panel.grid.minor = element_line(colour = NA),
    panel.background = element_rect(fill = "black"),
    plot.background = element_rect(fill = "black")
  )



df %>% 
  ggplot(
    aes(x= x,
        y = y,
        col= z)
  ) +
  geom_dotplot(aes(y= 18), binwidth = 5, fill='purple', col= NA) +
  scale_color_paletteer_c("grDevices::Purples 2")+
  # ggdark::dark_mode()+
  theme_void()+
  theme(
    panel.grid.major = element_line(colour = NA),
    panel.grid.minor = element_line(colour = NA),
    panel.background = element_rect(fill = "black"),
    plot.background = element_rect(fill = "black")
  )











# green explosion
df %>% 
  ggplot(
    aes(x= x*z,
        y = y*z,
        col= z*x)
  ) +
  # geom_jitter(show.legend = F) +
  # geom_density_2d_filled()+
  # geom_density_2d()+
  # geom_segment(aes(xend= 30, yend= 70), show.legend = F) +
  # geom_line(show.legend = F, alpha= 0.5)+
  # geom_hex(show.legend = F)+
  geom_jitter(show.legend = F)+
  
  scale_color_paletteer_c("gameofthrones::wildfire")+
  theme_void()+
  theme(
    panel.grid.major = element_line(colour = NA),
    panel.grid.minor = element_line(colour = NA),
    panel.background = element_rect(fill = "black"),
    plot.background = element_rect(fill = "black")
  )











sin(df2$x)

df %>% 
  ggplot(
    aes(x= sin(x),
        y = y*z,
        col= z*x)
  ) +
  geom_jitter(show.legend = F)+
  scale_color_paletteer_c("gameofthrones::baratheon")+
  theme_void()+
  theme(
    panel.grid.major = element_line(colour = NA),
    panel.grid.minor = element_line(colour = NA),
    panel.background = element_rect(fill = "black"),
    plot.background = element_rect(fill = "black")
  )






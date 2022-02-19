
# 参考：https://shohei-doi.github.io/quant_polisci/visual-map.html

library(tidyverse)
library(maps)
library(jpndistrict)
library(countrycode)


world <- map_data("world")
head(world)



world %>% 
  filter(region =="Japan") %>%
  ggplot(aes(x=long,y=lat,group=group))+
  geom_polygon(fill = "white",colour = "black",size = 0.1)+
  geom_point(aes(x= toukei,y= hokui,colour=pH),size=2,data = df,inherit.aes = FALSE,alpha=0.4)+
  scale_color_gradientn(colours=rainbow(5))+
  xlab("経度")+
  ylab("緯度")+
  theme_classic()
  



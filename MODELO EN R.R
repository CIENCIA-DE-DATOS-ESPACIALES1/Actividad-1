rm(list = ls())
#setwd("")

gpklink="america_3395.gpkg"

library(sf)

map1=read_sf(gpklink, layer = "Puntos_DDM")

library(ggplot2)
map1gg=ggplot() + theme_bw() + geom_sf(data = map1,color='red')
map1gg

saveRDS(map1gg,file='MAPA1.rds')

map2=read_sf(gpklink, layer = "Centroides_PSM")

map2gg=ggplot() + theme_void() + geom_sf(data = map2, aes(size=size))
map2gg

saveRDS(map2gg,file='MAPA2.rds')

map3=read_sf(gpklink, layer = "Coropletico")

map3gg=ggplot() + theme_void() + geom_sf(data = map3, 
                                         aes(fill=as.ordered(mobilesPopulation_cat_nombre)))
map3gg

saveRDS(map3gg,file='MAPA3.rds')
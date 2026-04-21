rm(list = ls())
#setwd("")

gpklink="https://github.com/CIENCIA-DE-DATOS-ESPACIALES1/Actividad-1/raw/main/China/china_6933.gpkg"

library(sf)

map1=read_sf(gpklink, layer = "puntos_ddm")

library(ggplot2)
map1gg=ggplot() + theme_bw() + geom_sf(data = map1,color='red')
map1gg

saveRDS(map1gg,file='map1_final.rds')

map2=read_sf(gpklink, layer = "centroides_psm")

map2gg=ggplot() + theme_void() + geom_sf(data = map2, aes(size=size))
map2gg

saveRDS(map2gg,file='map2_final.rds')

map3=read_sf(gpklink, layer = "provincias_densidad")

map3gg=ggplot() + theme_void() + geom_sf(data = map3, aes(fill=densidad_cat_nombre))
map3gg

saveRDS(map3gg,file='map3_final.rds')
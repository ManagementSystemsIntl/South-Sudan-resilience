
# mapping practice

frq(dat$ea)

states <- geoboundaries(country = "South Sudan"
                        , adm_lvl = "adm1")

counties <- geoboundaries(country="South Sudan",
                          adm_lvl="adm2")

# states ---- 

ggplot(states) +
  geom_sf() +
  geom_sf(data=counties,
          color="blue") +
  geom_sf(data = datf
          , size=.8,
          alpha = .6,
          color="magenta") 


# single ea ---- 

t1 <- dat %>%
  filter(ea==710901001202)

t1f <- st_as_sf(t1, coords=c("longitude","latitude"), crs=4326)

?sf_multipoint

out <- sf_multipoint(t1[,c("longitude", "latitude")]) %>%
  st_centroid() %>%
  st_set_crs(st_crs(counties))

class(out)
out

mapview(t1f)

ggplot(ul_f) +
  geom_sf() +
  geom_sf(data=out, 
        color="brown",
        size=13) +
  geom_sf(data=ul_poly,
          color="blue") +
  geom_sf(data = ul_f
          , size=.4,
          alpha = .6,
          color="magenta") 

dat2 <- dat %>%
  filter(!is.na(latitude),
         !is.na(longitude))

datf <- st_as_sf(dat2, coords=c("longitude","latitude"), crs=4326)





# Ulang county ---- 

ul <- dat2 %>%
  filter(county=="Ulang")

ul_poly <- counties %>%
  dplyr::filter(shapeName=="Ulang")

ul_f <- st_as_sf(ul, coords=c("longitude","latitude"), crs=4326)

mapview(ul_f)

# Ulang centroids by sampling point

ul_cen <- ul %>%
  group_by(ea) %>%
  sf_multipoint(c("longitude", "latitude")) %>%
  st_centroid() %>%
  ungroup()

%>%
  st_set_crs(st_crs(counties))

nc_grouped <- nc %>%
  group_by(id) %>%
  summarise(st_union(geometry)) %>%
  st_centroid() 
#> Warning in st_centroid.sf(.): st_centroid assumes attributes are constant over
#> geometries of x

# plot everything
ggplot() + 
  geom_sf(data = nc, aes(fill = id, alpha = .2)) +
  geom_sf(data = nc_grouped, aes(color = id), size = 3) + 
  scale_fill_viridis_c() +
  scale_color_viridis_c()






frq(dat$county)

ggplot(ul_f) +
  geom_sf() +
  geom_sf(data=ul_poly,
           color="blue") +
  geom_sf(data = ul_f
          , size=.4,
          alpha = .6,
          color="magenta") 


#This version has a geometry column added to it
#This creates a list column of the combined longitude and latitude
events_sf <- st_as_sf(events, coords = c("longitude", "latitude"), crs = 4321)

#Now we can manipulate the events_sf object as a normal dataframe


#Quick interactive view
mapview(events_sf)

#Quick static view
plot(events_sf[,1])

#But there's no polygons for South Sudan


#As a note geoboundaries is not maintained well, but it is easy. 
#I use www.gadm.org and download geopackage files if I want to make 
#sure I use something of high quality
#What did we get?
mapview(states)


##here's a more prepared ggplot static map
ggplot(states) +
  geom_sf() +
  geom_sf(data = events_sf, aes(color = event_type)
          , size=.8,
          alpha = .6) 
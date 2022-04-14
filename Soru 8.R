install.packages("skimr")
install.packages("janitor")
library(janitor)
library(skimr)

#2 kolonu da küçük harf yapma
Stats_Access <- mutate(Stats_Access_Link = str_to_lower(Stats_Access_Link),
                       Device_Type = str_to_lower(Device_Type))     

#Stats_Access_Link kolununu düzenleme
Stats_Access <- mutate(Stats_Access_link = recode(Stats_Access_link, "<url>"="","//" = "","_" = ""))                    
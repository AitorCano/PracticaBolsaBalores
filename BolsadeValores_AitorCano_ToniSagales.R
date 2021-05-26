# Instalación de paquetes ####

pkg_names <- c("quantmod","xts","rvest","tidyverse","stringr","forcast","lubridate","plotly","corrplot")
install.packages(pkg_names)
library(quantmod)
library(forcats)


# Prueba MasterCard ####

dMA <- read.table("ma.us.txt", sep=",", dec=".", quote = "-",
                            header=TRUE, skip = 0, na.strings = "NA")

write.table(dMA, file="ma.us.txt", sep=",", dec=".", row.names = FALSE,
            col.names = TRUE, quote = TRUE, qmethod = "escape")

dMA


getSymbols("MA", from = "2007-01-01", to = "2016-10-23")

MA %>% class()
MA %>% str()
MA%>% head()


MA %>%
  Ad() %>%
  chartSeries()


MA %>%
  chartSeries(TA='addBBands();
                  addBBands(draw="p");
                  addVo();
                  addMACD()', 
              subset='2016',
              theme="white"
              ) 


library(plyr)
library(dplyr)
library(tidyr)
library(tidyverse)

archivo_csv <- "phloem_grouped_data.csv"

# Leer el archivo CSV
d <- read.csv(archivo_csv)

height<- as.factor(d$Height_cm)
treatment <- as.factor(d$Treatment)

#means 130 and 160
d2

d2<- d %>%
  group_by(Treatment) %>%
  filter(Height_cm == 130)


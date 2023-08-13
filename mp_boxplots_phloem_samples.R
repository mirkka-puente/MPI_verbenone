#install.packages("ggplot")
library(readxl)
library(ggplot2)

archivo_csv <- "phloem_grouped_data.csv"

# Leer el archivo CSV
d <- read.csv(archivo_csv)

height<- as.factor(d$Height_cm)
treatment <- as.factor(d$Treatment)


# Create a customized boxplot 1_verbenone_glucoside_mg
ggplot(d, aes(x = Treatment, y = Peak_area_1_verbenone_glucoside_mg,
                 fill = factor(Treatment))) +
  geom_boxplot() +
  labs(title = "Boxplot (1) Verbenone-glucoside",
       x = "Treatment",
       y = "Area of peak") +
  scale_fill_discrete(name = "Treatments") +
  theme_minimal()

# Create a customized boxplot 2_verbenone_glucoside_mg
ggplot(d, aes(x = Treatment, y = Peak_area_2_verbenone_glucoside_mg,
              fill = factor(Treatment))) +
  geom_boxplot() +
  labs(title = "Boxplot (2) Verbenone-glucoside",
       x = "Treatment",
       y = "Area of peak") +
  scale_fill_discrete(name = "Treatments") +
  theme_minimal()

# Create a customized boxplot OH_verbenone
ggplot(d, aes(x = Treatment, y = Peak_area_OH_verbenone_mg,
              fill = factor(Treatment))) +
  geom_boxplot() +
  labs(title = "Boxplot OH-Verbenone",
       x = "Treatment",
       y = "Area of peak") +
  scale_fill_discrete(name = "Treatments") +
  theme_minimal()


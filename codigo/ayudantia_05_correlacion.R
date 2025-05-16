library(datos)
library(tidyverse)
library(ggcorrplot)

millas
?millas
glimpse(millas)

ggplot(millas, aes(x = ciudad, y = autopista)) +
  geom_point() +
  geom_smooth(method = "lm") +
  theme_minimal() +
  labs(title = "correlacion")

# 4. 📈 Calcular correlación entre ciudad y autopista
cor.test(millas$ciudad, millas$autopista)

# Seleccionamos algunas variables numéricas
numericas <- millas %>%
  select(ciudad, autopista, cilindrada, cilindros)

# Matriz de correlación
cor_matrix <- cor(numericas, use = "complete.obs")
cor_matrix

# Gráfico de matriz de correlación
ggcorrplot(cor_matrix, 
           lab = TRUE, 
           type = "lower")       # 👈 Solo muestra la mitad inferior

# Otro ejemplo ----

aeropuerto <- read.csv("data/05_datos_2023_10min_aeropuerto.csv")
aer_cor <- aeropuerto %>%
  select(-c(FechaHora_10min, codigoNacional.x, idEquipo.x, codigoNacional.y, idEquipo.y, Altura))

cor_matrix_aer <- cor(aer_cor, use = "complete.obs")
cor_matrix_aer     

ggcorrplot(cor_matrix_aer, 
           lab = TRUE, 
           type = "lower",       # 👈 Solo muestra la mitad inferior
           lab_size = 2.5)


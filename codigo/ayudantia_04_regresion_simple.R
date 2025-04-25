# ================================================
# 🧪 REGRESIÓN LINEAL SIMPLE - PINGÜINOS
# Curso: Aplicaciones Estadísticas
# ================================================

# 1. 📂 Cargar paquetes necesarios
library(readr)      # Para leer archivos CSV
library(tidyverse)      # Para manipulación de datos
 # Para evaluar modelos (opcional, pero útil)

# 2. 📁 Leer la base de datos
# Cambia el nombre del archivo si es necesario
penguins <- read_csv("data/04_penguins.csv")

# 3. 🧹 Revisión general y limpieza
# Revisar estructura
glimpse(penguins)

# Eliminar filas con NA en variables relevantes
penguins_sin_na <- na.omit(penguins)

# 4. 📊 Análisis descriptivo básico
summary(penguins_sin_na$flipper_length_mm)
summary(penguins_sin_na$body_mass_g)

# 5. 📈 Graficar la relación entre variables
ggplot(penguins_sin_na, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species))

# 6. 📐 Ajustar el modelo de regresión lineal simple
modelo1 <- lm(body_mass_g ~ flipper_length_mm, data = penguins_sin_na)

# 7. 🧾 Resumen del modelo
summary(modelo1)

# Interpretación esperada:
# - Coeficiente de bill_length_mm: cambio esperado en masa corporal por mm de pico
# - R²: porcentaje de variación explicada
# - p-valor: evidencia estadística sobre la relación

# 8. 📊 Visualización de residuales
plot(modelo1, which = 1)  # Residuos vs valores ajustados
plot(modelo1, which = 2)  # QQ-plot

anova(modelo1)

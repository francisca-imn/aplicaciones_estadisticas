# Instalar paquetes necesarios si no los tienes
install.packages("openxlsx")
install.packages("ggplot2")

# Cargar los paquetes
library(openxlsx)
library(ggplot2)

datos_cobertura <- read.xlsx("data/02_datos_cobertura_vegetal.xlsx")

summary(datos_cobertura)
head(datos_cobertura)

?aov

modelo_anova <- aov(valor ~ grupo, data = datos_cobertura) 
modelo_anova
summary(modelo_anova)

?TukeyHSD

tukey <- TukeyHSD(modelo_anova)
tukey

# Un boxplot es una buena manera de visualizar la distribución de los datos por grupo
ggplot(datos_cobertura, aes(x = grupo, y = valor)) +
  geom_boxplot(fill = "lightblue") +
  theme_minimal()

ggplot(datos_cobertura, aes(x = grupo, y = valor)) +
  geom_boxplot()

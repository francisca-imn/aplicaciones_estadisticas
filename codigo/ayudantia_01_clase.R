a <- 10 #le asigné el numero 10
b <- 12
c <- a + b

nombre <- "francisca"
a1 <- "10"  #este es 10 pero texto
c1 <- b + a1

#comentario

d <- TRUE

class(a) #la funcion class() es para ver la clase de objeto
class(a1) 
class(d)

#como eliminar un objeto del enviroment:
rm(d)
rm(c)
rm(b)

#vectores:
numeros <- c(1, 5, 9, 52, 64, 87)
nombres <- c("fran", "trini", "jorge")

#un dataframe
df <- data.frame(ID = 1:3, nombres = c("fran", "trini", "jorge"), edad = c(25, 22, 23))

#instalar paquetes
install.packages("readr") #esto solo se hace una vez!
install.packages("tidyverse")
library(readr) #library() tienen que correrlo cada vez que abran un proyecto
library(tidyverse)

df_forestal <- read_csv("data/01_datos_forestales.csv")
df_forestal_limpio <- read_csv("data/01_datos_forestales_limpio_v2.csv")

# Estadísticas Descriptivas
mean(df_forestal$Altura_m, na.rm = TRUE)  # Media de la altura
median(df_forestal$Altura_m, na.rm = TRUE) # Mediana de la altura
sd(df_forestal$Altura_m, na.rm = TRUE)  # Desviación estándar altura

head(df_forestal)
glimpse(df_forestal)
summary(df_forestal)

unique(df_forestal$Especie)

unique(df_forestal_limpio$Especie)

#boxplot
ggplot(df_forestal_limpio, aes(x = Especie, y = Altura_m, fill = Especie)) +
         geom_boxplot()

df_especies_interes <- df_forestal_limpio %>% 
  filter(Especie %in% c("Nothofagus dombeyi", "Nothofagus pumilio"))

unique(df_especies_interes$Especie)

prueba_t <- t.test(Altura_m ~ Especie, data = df_especies_interes, var.equal = TRUE)
print(prueba_t)

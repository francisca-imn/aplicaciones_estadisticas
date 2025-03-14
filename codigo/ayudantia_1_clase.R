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

install.packages("readr")
install.packages("tidyverse")
library(readr)
library(tidyverse)

df_forestal <- read_csv("data/01_datos_forestales.csv")

head(df_forestal)
glimpse(df_forestal)
summary(df_forestal)



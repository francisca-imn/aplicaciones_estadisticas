pesos <- c(169.11, 158.20, 162.83, 172.93, 169.94, 147.18, 
           162.60, 153.79, 154.17, 158.28, 156.15, 166.63, 
           161.09, 155.97, 158.55, 157.67, 166.95, 153.36, 
           157.50, 148.17)

class(pesos) #funcion class() es para ver la clase del objeto

mean(pesos) #para calcular el promedio
promedio_pesos <- mean(pesos) #creé un obj con el promedio

varianza <- var(pesos) #varianza
desviacion <- sd(pesos) #desviacion estandar

sum(pesos) #calcula suma de todos los valores en el vector peso

pesos**2 # ** es el elevado
pesos/2 # dividir todos los valores de peso en 2

rm(varianza) #para borrar el objeto varianza

#AHORA PRUEBA DE T:
?t.test

prueba_t <- t.test(pesos, y = NULL, alternative = "greater", 
                   mu = 150, paired = FALSE, var.equal = TRUE, 
                   conf.level = 0.95)

prueba_t

#Concluyo que la media de los pesos de las manzanas es mayor a 150 g, 
#ya que el valor P es menos a 0.05. 
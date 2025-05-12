# aplicaciones_estadisticas

**Elaboración de ejercicios para curso de pregrado para estudiantes de Agronomía e Ingeniería Forestal.**  
Estadística básica e introducción a R.

## ¿Qué es R?

R es un lenguaje de programación diseñado para análisis estadístico y visualización de datos. Es ampliamente utilizado en ciencia, investigación y análisis de datos.

- **Página oficial:** [https://www.r-project.org/](https://www.r-project.org/)
- **Documentación oficial:** [https://cran.r-project.org/manuals.html](https://cran.r-project.org/manuals.html)

## ¿Qué es RStudio?

RStudio es un entorno de desarrollo integrado (IDE) que facilita el uso de R con una interfaz amigable.

- **Descarga RStudio:** [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/)
- **Documentación de RStudio:** [https://posit.co/resources/](https://posit.co/resources/)

## **Instalación de Paquetes**  

Para este curso, utilizaremos los siguientes paquetes. Puedes instalarlos ejecutando el siguiente código en R:

r
install.packages(c("tidyverse", "readr"))


## 📂 Estructura del Repositorio

- **data/**: Contiene los conjuntos de datos utilizados en las clases.
- **codigo/**: Código en R con ejemplos y ejercicios.
- **README.md**: Este documento con información del curso.

# 📅 Clase 1: Introducción a R y Estadística Descriptiva

Hoy aprenderemos:

✅ **Introducción a R y RStudio**  
✅ **Conceptos básicos** (objetos, funciones, estructuras de datos)  
✅ **Manejo de datos en R** (importar, limpiar y explorar)  
✅ **Estadísticas descriptivas** (media, mediana, desviación estándar)  
✅ **Prueba de comparación de medias** (*t-Student*)  
✅ **Visualización de datos con ggplot2**  

### 📥 Datos de la Clase

Descarga el archivo CSV con los datos forestales en la carpeta **data/**.

# 📅 Clase 2: Análisis de Varianza (ANOVA) y Comparaciones Múltiples

Hoy aprenderemos:

✅ **Carga y exploración de datos en formato Excel** con openxlsx  
✅ **Análisis de Varianza (ANOVA)** con aov()  
✅ **Interpretación de los resultados de ANOVA**  
✅ **Prueba de comparaciones múltiples de Tukey** con TukeyHSD()  
✅ **Visualización de resultados mediante ggplot2 (boxplot)**  

### 📥 Datos de la Clase

El archivo **02_datos_cobertura_vegetal.xlsx** contiene mediciones de cobertura vegetal en diferentes regiones de Chile. 
Los grupos representan distintos tipos de ecosistemas, como bosques templados, matorrales y estepas, evaluando la variación en la cobertura vegetal.

 # 📅 Clase 3: Regresión Lineal Simple

Hoy aprenderos:

✅ Modelo lineal simple con lm()  
✅ Revisión de supuestos del modelo (normalidad, homocedasticidad, independencia) 
✅ Interpretación de coeficientes y R²  
✅ Visualización del ajuste con geom_smooth() de ggplot2
✅ Análisis de residuos y leverage  

📁 El código y los datos asociados están en las carpetas codigo/, data/ y guias/.

---

Este repositorio será actualizado a medida que avancemos en el curso. **¡A programar en R! 🚀**



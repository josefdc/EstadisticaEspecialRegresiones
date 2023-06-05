# Verifica e instala el paquete ggplot2 si no está ya instalado
if (!require(ggplot2)) {
  install.packages("ggplot2")
}

# Carga la biblioteca
library(ggplot2)

# Usamos el conjunto de datos 'mtcars' que viene preinstalado en R
data(mtcars)

# Vamos a realizar una regresión lineal simple del mpg (miles por galón) contra hp (caballos de fuerza)
# Creamos el modelo
modelo_lineal <- lm(mpg ~ hp, data = mtcars)

# Resumen del modelo
print(summary(modelo_lineal))

# Ahora podemos trazar los datos y la línea de regresión
grafica <- ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", col = "red")

print(grafica)

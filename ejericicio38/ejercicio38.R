# Cálculo de los parámetros de regresión
n <- 10
suma_xt <- 7620
suma_yt <- 28.5
suma_xt_yt <- 26370
suma_xt2 <- 7104300
suma_yt2 <- 99.75

b1 <- (n * suma_xt_yt - suma_xt * suma_yt) / (n * suma_xt2 - suma_xt^2)
b0 <- (suma_yt - b1 * suma_xt) / n

# Cálculo de R^2
R2 <- ((n * suma_xt_yt - suma_xt * suma_yt) / sqrt((n * suma_xt2 - suma_xt^2)*(n * suma_yt2 - suma_yt^2)))^2

# Predicción del tiempo de entrega para una distancia de 1500 km
distancia <- 1500
tiempo_entrega <- b0 + b1 * distancia

print(paste("El tiempo necesario para la entrega es:", tiempo_entrega, "días."))
print(paste("El porcentaje de información explicado por la recta de regresión es:", R2*100, "%."))

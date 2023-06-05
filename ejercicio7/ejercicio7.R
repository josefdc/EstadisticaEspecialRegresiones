# Puntajes de aptitud y productividad
puntaje_aptitud <- c(9, 17, 20, 19, 20, 23)
productividad <- c(23, 35, 29, 33, 43, 32)

# Ajuste del modelo de regresión lineal
modelo <- lm(productividad ~ puntaje_aptitud)

# Predicción de la productividad para un puntaje de aptitud de 16
puntaje_nuevo <- data.frame(puntaje_aptitud = 16)
prod_esperada <- predict(modelo, puntaje_nuevo)

# Obtención del coeficiente de correlación
correlacion <- cor(puntaje_aptitud, productividad)

# Cálculo del error estándar de la estimación
error_estandar <- sqrt(sum(resid(modelo)^2) / (length(puntaje_aptitud) - 2))

# Intervalo de confianza del 95% para la productividad estimada
intervalo_confianza <- predict(modelo, puntaje_nuevo, interval = "confidence", level = 0.95)

# Imprimir los resultados
print(paste("La productividad esperada para un puntaje de aptitud de 16 es:", prod_esperada))
print(paste("El coeficiente de correlación es:", correlacion))
print(paste("El error estándar de la estimación es:", error_estandar))
print(paste("El intervalo de confianza del 95% para la productividad estimada es:", intervalo_confianza))

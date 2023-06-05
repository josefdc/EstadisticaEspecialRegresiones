# Porcentaje de descuento y variación de ventas
descuento <- c(10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30)
variacion_ventas <- c(3.43, 3.75, 4.52, 5.13, 5.94, 6.35, 7.99, 8.23, 9.46, 10.35, 12.00)

# Modelo de regresión
modelo <- lm(variacion_ventas ~ descuento)

# a) Porcentaje de descuento para un aumento del 18% en ventas
venta_predicha <- 18
descuento_predicho <- (venta_predicha - coef(modelo)[1]) / coef(modelo)[2]
print(descuento_predicho)

# b) Porcentaje de la varianza total no explicada por la recta de regresión
r_cuadrado <- summary(modelo)$r.squared
varianza_no_explicada <- (1 - r_cuadrado) * 100
print(varianza_no_explicada)

# c) Coeficiente de correlación
correlacion <- cor(descuento, variacion_ventas)
print(correlacion)

# d) Intervalo de confianza del 95% para el valor estimado del punto (a)
nuevo_data <- data.frame(descuento = descuento_predicho)
intervalo_confianza <- predict(modelo, nuevo_data, interval = "confidence", level = 0.95)
print(intervalo_confianza)

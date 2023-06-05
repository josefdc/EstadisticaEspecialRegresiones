# Volumen de ventas y temperatura promedio
ventas <- c(16.2, 17.4, 12.3, 35.9, 42.1, 26.4, 19.0, 10.1)
temperatura <- c(18.3, 21.2, 17.6, 23.4, 25.2, 20.4, 21.6, 18.6)

# Gráfica de puntos y recta de regresión
plot(temperatura, ventas, main = "Gráfica de Temperatura vs Ventas",
     xlab = "Temperatura Máxima Promedio", ylab = "Volumen de Ventas")
modelo1 <- lm(ventas ~ temperatura)
abline(modelo1, col = "red")

# Gráfica de puntos y recta de regresión inversa
plot(ventas, temperatura, main = "Gráfica de Ventas vs Temperatura",
     xlab = "Volumen de Ventas", ylab = "Temperatura Máxima Promedio")
modelo2 <- lm(temperatura ~ ventas)
abline(modelo2, col = "blue")


# Coeficiente de determinación (R cuadrado)
r_cuadrado <- summary(modelo1)$r.squared
print(r_cuadrado * 100)


# Intervalo de confianza para las ventas esperadas
nuevo_data <- data.frame(temperatura = 25)
intervalo_confianza <- predict(modelo1, nuevo_data, interval = "confidence", level = 0.95)
print(intervalo_confianza)

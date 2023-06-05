# Ingresos y Gastos
ingresos <- c(6.500, 7.000, 8.000, 10.000, 11.000, 7.500, 8.000, 9.000, 10.800, 8.300)
gastos <- c(6.300, 6.700, 7.000, 8.200, 9.000, 7.300, 7.900, 8.500, 8.600, 7.700)

# Dibujar el diagrama de dispersión
plot(ingresos, gastos, xlab = "Ingresos", ylab = "Gastos", main = "Diagrama de dispersión: Ingresos vs Gastos")

# Calcular la regresión lineal
modelo <- lm(ingresos ~ gastos)

# Agregar la línea de regresión al diagrama de dispersión
abline(modelo, col = "red")

# Imprimir los coeficientes del modelo
print(coef(modelo))
# Predecir el ingreso para un gasto de 12.400
gasto_nuevo <- data.frame(gastos = 12.400)
ingreso_predicho <- predict(modelo, gasto_nuevo)

print(ingreso_predicho)


# Coeficiente de determinación (R cuadrado)
r_cuadrado <- summary(modelo1)$r.squared
print(r_cuadrado * 100)

# Intervalo de confianza para las ventas esperadas
nuevo_data <- data.frame(temperatura = 25)
intervalo_confianza <- predict(modelo1, nuevo_data, interval = "confidence", level = 0.95)
print(intervalo_confianza)

# Agente y Solubilidad
agente <- c(3, 2, 1, 3, 5, 4)
solubilidad <- c(7, 9, 10, 8, 5, 6)

# Calcular el coeficiente de correlación
correlation <- cor(agente, solubilidad)

print(correlation)

# Calcular la regresión lineal
modelo <- lm(solubilidad ~ agente)

# Predecir la solubilidad para un agente de 0
agente_nuevo <- data.frame(agente = 0)
solubilidad_predicha <- predict(modelo, agente_nuevo)

print(solubilidad_predicha)

# Calcular la proporción de agente para una solución instantánea
agente_instantaneo <- (0 - coef(modelo)[1]) / coef(modelo)[2]

print(agente_instantaneo)

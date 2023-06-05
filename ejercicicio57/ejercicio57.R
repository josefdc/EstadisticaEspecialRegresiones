# Utilidad bruta y costo de mano de obra
utilidad_bruta <- c(4, 9, 8, 10, 12)
costo_mano_de_obra <- c(3, 8, 8, 6, 4)

# Ajuste del modelo de regresión lineal
modelo <- lm(utilidad_bruta ~ costo_mano_de_obra)

# Predicción de la utilidad bruta cuando el costo de la mano de obra es de $10 millones
nuevo_costo <- data.frame(costo_mano_de_obra = 10)
utilidad_esperada <- predict(modelo, nuevo_costo)
print(utilidad_esperada)

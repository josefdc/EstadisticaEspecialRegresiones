# Verifica si el paquete ggplot2 está instalado, si no, instálalo
if (!require(ggplot2)) {
  install.packages("ggplot2")
}

# Carga la biblioteca ggplot2
library(ggplot2)

# Datos
ciudades <- c("Bogotá", "Medellín", "Cali", "Barranquilla", "Cartagena")
poblacion <- c(7743955, 2533424, 2252616, 1244491, 914552) # Población
pib_per_capita <- c(15800, 10900, 9800, 8700, 8300) # PIB per cápita en dólares

# Crea un dataframe con los datos
df <- data.frame(ciudades, poblacion, pib_per_capita)

# Explora los datos
summary(df)

# Realiza la regresión simple
modelo <- lm(pib_per_capita ~ poblacion, data = df)

# Muestra el resumen del modelo
summary(modelo)

# Verifica los supuestos de la regresión
par(mfrow=c(2, 2))
plot(modelo)

# Crea un gráfico de dispersión con la línea de regresión
ggplot(df, aes(x=poblacion, y=pib_per_capita)) +
  geom_point() +
  geom_smooth(method=lm, se=FALSE, color="red", linetype="dashed") +
  labs(title="Regresión simple de PIB per cápita vs Población", x="Población", y="PIB per cápita") +
  theme_minimal()

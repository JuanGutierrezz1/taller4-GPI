# Archivo: proyecto/scripts/modelado.R

# 1. Cargar los datos generados en la fase anterior
datos <- read.csv("proyecto/data/raw/datos_simulados.csv")

# 2. Ajustar un modelo de regresión lineal simple
# Queremos ver si el 'valor_venda' tiene una relación con el 'id' (tiempo)
modelo_lineal <- lm(valor_venda ~ id, data = datos)

# 3. Ver el resumen del modelo
resumen <- summary(modelo_lineal)
print(resumen)

# 4. Guardar los resultados en la carpeta de tablas
# Creamos un pequeño archivo de texto con los resultados del modelo
capture.output(resumen, file = "proyecto/results/tables/resumen_modelo.txt")

print("Modelo ejecutado y resultados guardados en proyecto/results/tables/")

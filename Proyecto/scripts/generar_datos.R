# Archivo: proyecto/scripts/generar_datos.R
source("proyecto/src/data.r") # Carga la función que creamos

# Generar 50 datos

datos_finales <- generar_tabla_sintetica(50)

# Guardar los datos en la carpeta raw
write.csv(datos_finales, "proyecto/data/raw/datos_simulados.csv", row.names = FALSE)


print("Datos generados y guardados en proyecto/data/raw/")
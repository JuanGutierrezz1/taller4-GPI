# Archivo: Proyecto/scripts/generar_datos.R
source("../src/data.r")

# Generar 50 datos
datos_finales2 <- generar_tabla_sintetica(50)

# Guardar los datos en la carpeta raw
write.csv(datos_finales2, "../data/raw/datos_simulados.csv", row.names = FALSE)
print("Datos generados y guardados en data/raw/")

# ── Leer datos desde Zenodo vía API ──────────────────────────────────────────
library(httr)
library(jsonlite)

doi <- "10.5281/zenodo.18820966"  # <-- tu DOI real aquí

record_id <- sub(".*zenodo\\.", "", doi)
api_url   <- paste0("https://zenodo.org/api/records/", record_id)
respuesta <- GET(api_url)
metadatos <- fromJSON(content(respuesta, "text", encoding = "UTF-8"))

archivos     <- metadatos$files
url_csv      <- archivos$links$self[grepl("\\.csv$", archivos$key)]
datos_zenodo <- read.csv(url_csv)

print(paste("Datos leídos desde Zenodo:", nrow(datos_zenodo), "filas"))
head(datos_zenodo)
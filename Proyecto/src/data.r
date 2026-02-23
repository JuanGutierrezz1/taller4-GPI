# Archivo: proyecto/src/funciones.R
#probando
generar_tabla_sintetica <- function(n) {
  set.seed(42)
  df <- data.frame(
    id = 1:n,
    valor_venda = rnorm(n, mean = 100, sd = 20),
    fecha = seq(as.Date("2023-01-01"), by = "day", length.out = n)
  )
  return(df)
}
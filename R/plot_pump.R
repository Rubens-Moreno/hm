#' Title
#'
#' @param df Objeto resultado da funcao pumpsis
#'
#' @return Um Plot da curva caracteristica da motombomba
#' @export
#'
#' @examples
#' Q_BC21_15 <- c(19.2, 18.2, 17.2, 16.0, 13.3, 9.9)/3600
#' Hm_BC21_15 <- c(9, 10, 11, 12, 14, 16)
#' curva_bomba <- hmpump(Q_BC21_15, Hm_BC21_15)
#' plot_pump(curva_bomba)
plot_pump <- function(df) {
  plot(hm_bomba ~ q_bomba,
       data = df[[1]],
       type = "b",
       lwd = 2,
       xlab = "Vazao - Q(m3/h)",
       ylab = "Altura manometrica - Hm (mca)",
       main = "Curva Caracteristica da Bomba"
  )
}


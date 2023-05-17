#' Plot of characteristic curve of the pump
#'
#' @param df Pump data.frame
#'
#' @return Plot
#' @export
#'
#' @examples
#' Q_BC21_15 <- c(19.2, 18.2, 17.2, 16.0, 13.3, 9.9)
#' Hm_BC21_15 <- c(9, 10, 11, 12, 14, 16)
#' curva_bomba <- pumpsis(Q_BC21_15, Hm_BC21_15)
#' plot.bomba(curva_bomba)
plot.bomba <- function(df) {
  plot(hm_bomba ~ q_bomba,
       data = curva_bomba[[1]],
       type = "b",
       lwd = 2,
       xlab = "Vazao - Q(m3/h)",
       ylab = "Altura manometrica - Hm (mca)",
       main = "Curva Caracteristica da Bomba"
  )
}

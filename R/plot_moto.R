#' Plot of characteristic curve of the pump
#'
#' @param df Pump data.frame
#'
#' @return Plot
#' @export
#'
#' @examples
#' q_pump <- c(19.2, 18.2, 17.2, 16.0, 13.3, 9.9)
#' hm_pump <- c(9, 10, 11, 12, 14, 16)
#' pump_curve <- pumpsis(Q_BC21_15, Hm_BC21_15)
#' plot.pump(pump_curve)
plot.pump <- function(df) {
  plot(hm_pump ~ q_pump,
       data = pump_curve[[1]],
       type = "b",
       lwd = 2,
       xlab = "Vazao - Q(m3/h)",
       ylab = "Altura manometrica - Hm (mca)",
       main = "Curva Caracteristica da Bomba"
  )
}

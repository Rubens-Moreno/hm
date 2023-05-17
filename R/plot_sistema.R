#' Title
#'
#' @param df Objeto resultado da funcao hmsis
#'
#' @return Um Plot da curva caracteristica do sistema
#' @export
#'
#' @examples
#' curva_sistema <- hmsis(
#'  hr = 3, hs = 1, dr_com = 0.0352, q = 6.8, lr = 18, per = 148,
#'  rc = 0.0001, ds_com = 0.0534, ls = 1, pes = 305
#' )
#' plot.sistema(curva_sistema)
plot.sistema <- function(df) {
  plot(hm ~ q,
    data = curva_sistema[[1]],
    type = "b",
    lwd = 2,
    xlab = "Vazao - Q(m3/h)",
    ylab = "Altura manometrica - Hm (mca)",
    main = "Curva Caracteristica do Sistema"
  )
}

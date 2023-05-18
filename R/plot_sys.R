#' Title
#'
#' @param df Objeto resultado da funcao hmsis
#'
#' @return Um Plot da curva caracteristica do sistema
#' @export
#'
#' @examples
#' curva_sistema <- hmsis(
#'   hr = 20, hs = 1, dr_com = 60 / 1000, q = 10 / 3600, lr = 50, per = 148,
#'   ds_com = 75 / 1000, ls = 2, pes = 305
#' )
#' plot_sys(curva_sistema)
plot_sys <- function(df) {
  plot(hm ~ q,
    data = df[[1]],
    type = "b",
    lwd = 2,
    xlab = "Vazao - Q(m3/h)",
    ylab = "Altura manometrica - Hm (mca)",
    main = "Curva Caracteristica do Sistema"
  )
}


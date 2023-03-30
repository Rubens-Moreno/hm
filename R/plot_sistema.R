#' Title
#'
#' @param df Data frame resultado da funcao hmsis
#'
#' @return
#' @export
#'
#' @examples
#' curva_sistema <-  hmsis(
#'   hr = 20, hs = 1, dr_com = 60 / 1000, q = 10 / 3600, lr = 50, per = 148, rc = 0.0001,
#'   ds_com = 75 / 1000, ls = 2, pes = 305
#' )
#'plot.sistema(curva_sistema[[1]])
plot.sistema <- function(df){
  plot(
    df[[1]][[1]],
    df[[1]][[2]],
       type="b",
       lwd=2,
       xlab="Vazao - Q(m3/h)",
       ylab="Altura manometrica - Hm (mca)",
       main="4. Curva Caracteristica do Sistema")

}

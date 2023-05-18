#' intersect
#'
#' ponto de interseccao entre as curvas do sistema e da bomba
#'
#' @param hmsis objeto criado pela funcao hmsis
#' @param hmpump objeto criado pela funcao hmpump
#' @export
#'
#' @examples
#' Q_BC21_15 <- c(19.2, 18.2, 17.2, 16.0, 13.3, 9.9) / 3600
#' Hm_BC21_15 <- c(9, 10, 11, 12, 14, 16)
#' curva_bomba <- hmpump(Q_BC21_15, Hm_BC21_15)
#' curva_sis <- hmsis(
#'   hr = 7, hs = 1, dr_com = 60 / 1000, q = 15 / 3600, lr = 50, per = 148,
#'   ds_com = 75 / 1000, ls = 2, pes = 305
#' )
#' intersect_pump(curva_sis, curva_bomba)
intersect_pump <- function(hmsis, hmpump) {
  a <- polyroot(hmsis[[2]]$coefficients - hmpump[[2]]$coefficients)
  return(Re(a)[Re(a) > 0])
}

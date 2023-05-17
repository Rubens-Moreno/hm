#' intersect point between sis and pump (sis function)
#'
#' @param x System coefficients
#' @param system_curve System curve
#'
#' @return One polynomial
#' @export
#'
#' @examples
#' system_curve <- hmsis(
#'  hr = 3, hs = 1, dr_com = 0.0352, q = 6.8, lr = 18, per = 148,
#'  rc = 0.0001, ds_com = 0.0534, ls = 1, pes = 305
#' )
#' system_curve <- func1(x, system_curve)
func1 <- function(x, system_curve)
{
  coef(system_curve[[2]])[[3]] * x^2 + coef(system_curve[[2]])[[2]] * x + coef(system_curve[[2]])[[1]]
}

#' pump function
#'
#' @param x Pump coefficients
#' @param curva_bomba Pump curve
#'
#' @return One polynomial
#' @export
#'
#' @examples
#' Q_BC21_15 <- c(19.2, 18.2, 17.2, 16.0, 13.3, 9.9)
#' Hm_BC21_15 <- c(9, 10, 11, 12, 14, 16)
#' curva_bomba <- pumpsis(Q_BC21_15, Hm_BC21_15)
#' plot.bomba(curva_bomba)
func2 <- function(x, curva_bomba)
{
  coef(curva_bomba[[2]])[[3]] * x^2 + coef(curva_bomba[[2]])[[2]] * x + coef(curva_bomba[[2]])[[1]]
}

#uniroot
rt <- uniroot(function(x)  func1(x) - func2(x)  , interval=c(0,80), tol=1e-8)
#uniroot check
all.equal(func1(rt$root), func2(rt$root))

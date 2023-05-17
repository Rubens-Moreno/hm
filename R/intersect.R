#' intersect point between sis and pump (sis function)
#'
#' @param x System coefficients
#'
#' @return One polynomial
#' @export
#'
#' @examples
func1 <- function(x)
{
  coef(curva_sistema[[2]])[[3]] * x^2 + coef(curva_sistema[[2]])[[2]] * x + coef(curva_sistema[[2]])[[1]]
}

#' pump function
#'
#' @param x Pump coefficients
#'
#' @return One polynomial
#' @export
#'
#' @examples
func2 <- function(x)
{
  coef(curva_bomba[[2]])[[3]] * x^2 + coef(curva_bomba[[2]])[[2]] * x + coef(curva_bomba[[2]])[[1]]
}

#uniroot
rt <- uniroot(function(x)  func1(x) - func2(x)  , interval=c(0,80), tol=1e-8)
#uniroot check
all.equal(func1(rt$root), func2(rt$root))

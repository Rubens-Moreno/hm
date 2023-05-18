#' #' intersect point between sis and pump (sis function)
#' #'
#' #' @param x System coefficients
#' #' @param system_curve System curve
#' #'
#' #' @return One polynomial
#' #' @export
#' #'
#' #' @examples
#' #' @examples
#' #' system_curve <- hmsis(
#' #'  hr = 3, hs = 1, dr_com = 0.0352, q = 6.8, lr = 18, per = 148,
#' #'  rc = 0.0001, ds_com = 0.0534, ls = 1, pes = 305
#' #' )
#' func1 <- function(x, system_curve)
#' {
#'   coef(system_curve[[2]])[[3]] * x^2 + coef(system_curve[[2]])[[2]] * x + coef(system_curve[[2]])[[1]]
#' }
#'
#' system_curve <- hmsis(
#'   hr = 3, hs = 1, dr_com = 0.0352, q = 6.8, lr = 18, per = 148,
#'   rc = 0.0001, ds_com = 0.0534, ls = 1, pes = 305
#' )
#'
#' #' pump function
#' #'
#' #' @param x Pump coefficients
#' #' @param pump_curve Pump curve
#' #'
#' #' @return One polynomial
#' #' @export
#' #'
#' #' @examples
#' #' q_pump <- c(19.2, 18.2, 17.2, 16.0, 13.3, 9.9)
#' #' hm_pump <- c(9, 10, 11, 12, 14, 16)
#' #' pump_curve <- pumpsis(q_pump, hm_pump)
#' func2 <- function(x, pump_curve)
#' {
#'   coef(pump_curve[[2]])[[3]] * x^2 + coef(pump_curve[[2]])[[2]] * x + coef(pump_curve[[2]])[[1]]
#' }
#'
#' #uniroot
#' rt <- uniroot(function(x, system_curve, pump_curve)  func1(x, system_curve) - func2(x, pump_curve)  , interval=c(0,80), tol=1e-8)
#' #uniroot check
#' all.equal(func1(rt$root), func2(rt$root))
#'


#NEW CODE

# root_dif <- polyroot(system_curve[[2]]$coefficients - pump_curve[[2]]$coefficients)
#
# print(root_dif)

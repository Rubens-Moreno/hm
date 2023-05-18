# #PLOT
# func1 <- function(x, system_curve) {
#   coef(system_curve[[2]])[[3]] * x^2 + coef(system_curve[[2]])[[2]] * x + coef(system_curve[[2]])[[1]]
# }
#
# func2 <- function(x, pump_curve) {
#   approx(pump_curve[[2]]$x, pump_curve[[2]]$y, xout = x)$y
# }
#
# x <- seq(0, 20, length.out = 100)
#
# y_system <- func1(x, system_curve)
# y_pump <- func2(x, pump_curve)
#
# # Plotagem do gráfico
# plot(x, y_system, type = "l", lwd = 3, col = "blue", xlab = "x", ylab = "y", ylim = range(y_system, y_pump))
# lines(x, y_pump[[2]], type = "l", lwd = 3, col = "red")
# abline(h = 0, lwd = 1, col = "black")  # Linha horizontal em y = 0
#
# # Destaque na raiz encontrada
# points(Re(root_dif), Im(root_dif), pch = 16, col = "green", cex = 2)
#
# # Legenda
# legend("topleft", legend = c("system_curve", "pump_curve", "Intersection"), col = c("blue", "red", "green"), lwd = 2, pch = c("-", "-", 16), cex = 0.8)
#




#' #' Intersection of system and pump curves
#' #'
#' #' @param df Data.frame
#' #'
#' #' @return Plot
#' #' @export
#' #'
#' #' @examples
#' #' curves <- pumpsis(func1(x), func2(x))
#' #' plot.intersect(curves)
#' plot.intersect <- function(df) {
#'   x <- seq(0, 20, length=100)
#'   plot(x,
#'        func1(x),
#'        col="blue",
#'        type="l",
#'        lwd=3,
#'        xlab="Vazao - Q(m3/h)",
#'        ylab="Altura manometrica - Hm (mca)",
#'        main="6. Intercessao")
#'   lines(x, func2(x), col="red", lwd="3", type="l")
#'   points(rt$root, func1(rt$root), pch=16, cex=2)
#' }
#'
#' #func1(rt$root)
#' rt$root
#' #conferindo
#' func1(rt$root)
#' func2(rt$root)
#'



# #plot da intercessao
# x <- seq(0, 20, length=100)
# plot(x,
#      func1(x),
#      col="blue",
#      type="l",
#      lwd=3,
#      xlab="Vazao - Q(m3/h)",
#      ylab="Altura manometrica - Hm (mca)",
#      main="6. Intercessao")
# lines(x, func2(x), col="red", lwd="3", type="l")
# points(rt$root, func1(rt$root), pch=16, cex=2)

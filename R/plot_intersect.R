#' Intersection of system and pump curves
#'
#' @param df Data.frame
#'
#' @return Plot
#' @export
#'
#' @examples
#' curves <- pumpsis(func1(x), func2(x))
#' plot.intersect(curves)
plot.intersect <- function(df) {
  x <- seq(0, 20, length=100)
  plot(x,
       func1(x),
       col="blue",
       type="l",
       lwd=3,
       xlab="Vazao - Q(m3/h)",
       ylab="Altura manometrica - Hm (mca)",
       main="6. Intercessao")
  lines(x, func2(x), col="red", lwd="3", type="l")
  points(rt$root, func1(rt$root), pch=16, cex=2)
}

#func1(rt$root)
rt$root
#conferindo
func1(rt$root)
func2(rt$root)




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

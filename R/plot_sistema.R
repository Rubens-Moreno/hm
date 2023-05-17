#' Plot of characteristic curve of the system
#'
#' @param df System data.frame
#'
#' @return Plot
#' @export
#'
#' @examples
#' system_curve <- hmsis(
#'  hr = 3, hs = 1, dr_com = 0.0352, q = 6.8, lr = 18, per = 148,
#'  rc = 0.0001, ds_com = 0.0534, ls = 1, pes = 305
#' )
#' plot.system(system_curve)
plot.system <- function(df) {
  plot(hm ~ q,
    data = system_curve[[1]],
    type = "b",
    lwd = 2,
    xlab = "Flow rate - Q(m3/h)",
    ylab = "Manometric height - Hm (mca)",
    main = "Characteristic curve of the system"
  )
}

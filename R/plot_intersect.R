
#' plot_intersect
#'
#' @inheritParams intersect
#'
#' @importFrom magrittr %>%
#' @import ggplot2
#' @export
#' @examples
#' Q_BC21_15 <- c(19.2, 18.2, 17.2, 16.0, 13.3, 9.9) / 3600
#' Hm_BC21_15 <- c(9, 10, 11, 12, 14, 16)
#' curva_bomba <- hmpump(Q_BC21_15, Hm_BC21_15)
#' curva_sis <- hmsis(
#'   hr = 7, hs = 1, dr_com = 60 / 1000, q = 15 / 3600, lr = 50, per = 148,
#'   ds_com = 75 / 1000, ls = 2, pes = 305
#' )
#' plot_intersect(curva_sis, curva_bomba)
plot_intersect <- function(hmsis, hmpump) {
  a <- polyroot(hmsis[[2]]$coefficients - hmpump[[2]]$coefficients)
  int=Re(a)[Re(a) > 0]
  df_colbind_na(curva_sis[[1]],curva_bomba[[1]] ) %>%
    ggplot()+
    geom_line(aes(x=q_bomba, y=hm_bomba), color="blue")+
    geom_line(aes(x=q, y=hm), color="green")
  }

#
# library(ggplot2)
#
# df_colbind_na(curva_sis[[1]],curva_bomba[[1]] ) %>%
#   ggplot()+
#   geom_line(aes(x=q_bomba, y=hm_bomba), color="blue")+
#   geom_line(aes(x=q, y=hm), color="green")

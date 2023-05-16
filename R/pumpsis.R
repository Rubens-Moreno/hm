#' Title
#'
#' @param q_bomba Vazoes da motobomba
#' @param hm_bomba Altura manometrica da motobomba
#'
#' @return Um data.frame
#' @export
#'
#' @examples
#' Q_BC21_15 <- c(19.2, 18.2, 17.2, 16.0, 13.3, 9.9)
#' Hm_BC21_15 <- c(9, 10, 11, 12, 14, 16)
#' curva_bomba <- pumpsis(Q_BC21_15, Hm_BC21_15)

pumpsis <- function(q_bomba, hm_bomba) {
  df_pump <- data.frame(q_bomba, hm_bomba)
  model_pump <- lm(formula = hm_bomba ~ q_bomba + I(q_bomba^2), data = df_pump)

    return(list(df_pump, model_pump))

  }

#' Pump coefficients and data.frame of flow rates and manometric heights
#'
#' @param q_pump Pump flow rates
#' @param hm_pump Pump manometric heights
#'
#' @return List
#' @export
#'
#' @examples
#' q_pump <- c(19.2, 18.2, 17.2, 16.0, 13.3, 9.9)
#' hm_pump <- c(9, 10, 11, 12, 14, 16)
#' pump_curve <- pumpsis(q_pump, hm_pump)

pumpsis <- function(q_pump, hm_pump) {
  df_pump <- data.frame(q_pump, hm_pump)
  model_pump <- lm(formula = hm_pump ~ q_pump + I(q_pump^2), data = df_pump)

    return(list(df_pump, model_pump))

  }

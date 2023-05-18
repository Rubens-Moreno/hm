#' Title
#'
#' @param q_bomba Vazoes da motobomba
#' @param hm_bomba Altura manometrica da motobomba
#'
#' @return Um data.frame
#' @importFrom stats lm
#' @export
#'
#' @examples
#' Q_BC21_15 <- c(19.2, 18.2, 17.2, 16.0, 13.3, 9.9)
#' Hm_BC21_15 <- c(9, 10, 11, 12, 14, 16)
#' hmpump(Q_BC21_15, Hm_BC21_15)

hmpump <- function(q_bomba, hm_bomba) {
  df <- data.frame(q_bomba, hm_bomba)
    model <- lm(formula = hm_bomba ~ poly(q_bomba, 2, raw = TRUE), data = df)

    return(list(df, model))

  }


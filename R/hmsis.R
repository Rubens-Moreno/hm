#' System coefficients and data.frame of flow rates and manometric heights
#'
#' @inheritParams hm
#'
#' @return List
#' @export
#'
#' @examples
#' system_curve <- hmsis(
#'  hr = 3, hs = 1, dr_com = 0.0352, q = 6.8, lr = 18, per = 148,
#'  rc = 0.0001, ds_com = 0.0534, ls = 1, pes = 305
#' )
hmsis <- function(hr, hs, dr_com, q, lr, per, rc, ds_com, ls, pes) {
  qc <- c(0.3 * q, 0.6 * q, q, 1.5 * q, 2 * q)
  hmsis_v <- c()
  for (i in seq_along(qc)) {
    hmsis_v[i] <- hm(hr, hs, dr_com, qc[i], lr, per, rc, ds_com, ls, pes)
  }

  df_sis <- data.frame(q = qc, hm = hmsis_v)
  model_sis <- lm(formula = hmsis_v ~ qc + I(qc^2))

  return(list(df_sis, model_sis))
}

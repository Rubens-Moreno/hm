#' Função hm
#'
#' @param hr Altura de recalque
#' @param hs Altura de sucção
#' @param dr_com Diâmetro comercial
#' @param q Vazão
#' @param lr Comprimento do recalque
#' @param per Comprimento equivalente linha de recalque
#' @param ds_com diametro linha de succao
#' @param ls comprimento da linha de succao
#' @param pes Comprimento equivalente linha de succao
#'
#'
#' @return Numero
#' @export

hm <- function(hr, hs, dr_com, q, lr, per,  ds_com, ls, pes) {
  hm <- head_loss(d = dr_com, q = q , l = lr + per * dr_com) +
        head_loss(d = ds_com, q = q , l = ls + pes * ds_com) +
        hr + hs
}

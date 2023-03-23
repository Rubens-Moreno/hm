#' Função hm
#'
#' @param hr Altura de recalque
#' @param hs Altura de sucção
#' @param dr_com Diâmetro comercial
#' @param q Vazão
#' @param lr Comprimento do recalque
#' @param per Comprimento equivalente linha de recalque
#' @param rc Coficiente de rugosidade
#' @param ds_com diametro linha de succao
#' @param ls comprimento da linha de succao
#' @param pes Comprimento equivalente linha de succao
#'
#' @return numero
#' @export



hm <-  function(hr,hs,dr_com,q,lr,per,rc,ds_com,ls,pes){
  hm <- hf::head_loss(dr_com, q/3600, lr+per*dr_com, rc)+hf::head_loss(ds_com, q/3600, ls+pes*ds_com, rc)+hr+hs

}




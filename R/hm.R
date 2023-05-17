#' hm Function to set manometric height
#'
#' @param hr Discharge height in meters
#' @param hs Suction height in meters
#' @param dr_com Commercial diameter in meters
#' @param q Flow in cubic meters per second
#' @param lr Length of the discharge line in meters
#' @param per Length of special parts in the discharge line in meters
#' @param rc Material roughness coefficient in meters
#' @param ds_com Diameter of the suction line in meters
#' @param ls Suction line length in meters
#' @param pes Length of special parts in the suction line in meters
#'
#'
#' @return Number
#' @export

hm <- function(hr, hs, dr_com, q, lr, per, rc, ds_com, ls, pes) {
  hm <- head_loss(dr_com, q / 3600, lr + per * dr_com, rc) + head_loss(ds_com,
  q / 3600, ls + pes * ds_com, rc) + hr + hs
}

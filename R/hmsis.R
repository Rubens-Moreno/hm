#' Title
#'
#' @inheritParams hm
#'
#' @return um data.frame
#' @export
#'
#' @examples
#' hmsis(hr=20, hs=1, dr_com=60/1000, q=10/3600, lr=50, per=148, rc=0.0001,
#' ds_com=75/1000, ls=2, pes=305)

hmsis <- function(hr,hs,dr_com,q,lr,per,rc,ds_com,ls,pes){
  qc=c(0.3*q,0.6*q,q,1.5*q,2*q)
  hmsis_v <- c()
  for(i in seq_along(qc)){
    hmsis_v[i]=hm(hr,hs,dr_com,qc[i],lr,per,rc,ds_com,ls,pes)
  }
  return(data.frame(q = qc, hm = hmsis_v))

}



#eixos do data frame
qc<-c(0.3*q,0.6*q,q,1.5*q,2*q)
hmsis_v[i]=hm(hr,hs,dr_com,qc[i],lr,per,rc,ds_com,ls,pes)

#tabela (Data Frame)
curva_sistema<-data.frame(q = qc, hm = hmsis)
curva_sistema

#ajuste polinomial da curva_sistema
Model<-lm(formula = hm ~ q + I(q^2), data = curva_sistema)
Model


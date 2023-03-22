hm <-  function(hr,hs,dr_com,q,lr,per,rc,ds_com,ls,pes){
  hm <- hf::head_loss(dr_com, q/3600, lr+per*dr_com, rc)+hf::head_loss(ds_com, q/3600, ls+pes*ds_com, rc)+hr+hs

}

hmsis <- function(hr,hs,dr_com,q,lr,per,rc,ds_com,ls,pes){
  qc=c(0.3*q,0.6*q,q,1.5*q,2*q)
  hmsis_v <- c()
  for(i in seq_along(qc)){
    hmsis_v[i]=hm(hr,hs,dr_com,qc[i],lr,per,rc,ds_com,ls,pes)
  }
  return(data.frame(q = qc, hm = hmsis_v))

}

hmsis(hr=20, hs=1, dr_com=60/1000, q=10/3600, lr=50, per=148, rc=0.0001, ds_com=75/1000, ls=2, pes=305)


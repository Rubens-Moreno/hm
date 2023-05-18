
df_colbind_na <- function(a,b){
dim_a=dim(a)[1]
dim_b=dim(b)[1]


if(dim_a<dim_b)  {df=a}else{df=b}

for (i in seq(abs(dim_a-dim_b))){
  df=rbind_na(df)
}

if(dim_a<dim_b){
  return(data.frame(df,b))
}else{
  return(data.frame(a,df))
}

}




# bind a row off NA
rbind_na <- function(x){
  return(rbind(x, rep(NA, length(x))))
}

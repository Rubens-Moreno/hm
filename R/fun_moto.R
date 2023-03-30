hmsis <- function(hr, hs, dr_com, q, lr, per, rc, ds_com, ls, pes) {
  qc <- c(0.3 * q, 0.6 * q, q, 1.5 * q, 2 * q)
  hmsis_v <- c()
  for (i in seq_along(qc)) {
    hmsis_v[i] <- hm(hr, hs, dr_com, qc[i], lr, per, rc, ds_com, ls, pes)
  }

  df <- data.frame(q = qc, hm = hmsis_v)
  model <- lm(formula = hmsis_v ~ qc + I(qc^2))

  return(list(df, model))
}



#vetores motobomba BC-21 R 1 1/4, potencia 1.5
Q_BC21_15<-c(19.2, 18.2, 17.2, 16.0, 13.3, 9.9)
Hm_BC21_15<-c(9, 10, 11, 12, 14, 16)

#tabela (Data Frame)
curva_bomba<-data.frame(Q_BC21_15, Hm_BC21_15)
curva_bomba

#ajuste polinomial da curva_bomba
Model_bom<-lm(formula = Hm_BC21_15 ~ Q_BC21_15 + I(Q_BC21_15^2), data = curva_bomba)
Model_bom

Model_bom$coefficients[1]

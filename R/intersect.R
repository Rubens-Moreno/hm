<<<<<<< HEAD

# intersect point between sis and pump
# model_sis <- function(hm,q,I) {
#   lm(formula = hm ~ q + I(q^2), data = hmsis[[1]])
# }
# sis function
# result_sis <- model_sis(hm,q,I)
# func1 <- function(x)
# {
#   coef(result_sis)[[3]] * x^2 + coef(result_sis)[[2]] * x + coef(result_sis)[[2]]
# }
#
# # pump function
# result_pump <- model_pump(Hm_BC21_15, Q_BC21_15, I)
# func2 <- function(x)
# {
#   coef(result_pump)[[3]] * x^2 + coef(result_pump)[[2]] * x + coef(result_pump)[[1]]
#
# }
#
# #uniroot
# rt <- uniroot(function(x)  func1(x) - func2(x)  , interval=c(0,80), tol=1e-8)
# #uniroot check
# all.equal(func1(rt$root), func2(rt$root))
#





#new code

=======
>>>>>>> 7a2ff741e7f34405d711172a0e69f8ca04d5d2dc
# polyroot(curva_sistema[[2]]$coefficients - curva_bomba[[2]]$coefficients)
#
# 12,94 de vazao
#
#tentativa 1
# root_dif <- polyroot(curva_sistema[[2]]$coefficients - curva_bomba[[2]]$coefficients)
#
# print(root_dif)



# sis_line <- function(model_sis)
# {
#   model_sis$coefficients[3] * x^2 + model_sis$coefficients[2] * x + model_sis$coefficients[1]
# }
#
# pump_line <- function(model_bom)
# {
#   model_bom$coefficients[3]  * x^2 + model_bom$coefficients[2] * x + model_bom$coefficients[1]
# }
#
# rt <- uniroot(function(x)  sis_line(x) - pump_line(x)  , interval=c(0,80), tol=1e-8)
# all.equal(sis_line(rt$root), pump_line(rt$root))
#
# rt$root
#
# sis_line(rt$root)
# pump_line(rt$root)

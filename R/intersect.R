# #
# polyroot(curva_sistema[[2]]$coefficients - curva_bomba[[2]]$coefficients)
# #
# # # 12,94 de vazao
# #
# # #tentativa 1
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
#
 # polyroot(curva_sistema[[2]]$coefficients - curva_bomba[[2]]$coefficients)

# 12,94 de vazao

#
# # sis_line <- function(model_sis)
# # {
# #   model_sis$coefficients[3] * x^2 + model_sis$coefficients[2] * x + model_sis$coefficients[1]
# # }
# #
# # pump_line <- function(model_bom)
# # {
# #   model_bom$coefficients[3]  * x^2 + model_bom$coefficients[2] * x + model_bom$coefficients[1]
# # }
# #
# # rt <- uniroot(function(x)  sis_line(x) - pump_line(x)  , interval=c(0,80), tol=1e-8)
# # all.equal(sis_line(rt$root), pump_line(rt$root))
# #
# # rt$root
# #
# # sis_line(rt$root)
# # pump_line(rt$root)
# #
# >>>>>>> 8585e61f06ac6e236c1f5b756a6683916d189eaf
#
# curva_sistema[[2]]$coefficients
# curva_bomba[[2]]$coefficients


# hm: pacote para gerar data frame com valores de altura manométrica e vazão.

<!-- badges: start -->
[![R-CMD-check](https://github.com/Rubens-Moreno/hm/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Rubens-Moreno/hm/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

O objetivo do pacote hm é gerar uma tabela (data frame) com valores de altura manométrica e vazão. Estes valores, auxiliarão a compor uma curva característica de sistemas de irrigação.

A partir de um valor especifícado de vazão, e fornecendo dados variados do sistema (como alturas e comprimentos), a função gera um data frame com 5 valores, que representam respectivamente 30%, 60%, 100%, 150% e 200% da vazão especificada.

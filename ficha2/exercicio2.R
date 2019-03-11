#--------------------------------------------------
# Proposta de resolução da Ficha TP2
#--------------------------------------------------
#Exercicio 2
# -------------------------------------------------
potencia=c(39,41,42,41,34,45,40,46,43,43,39,47,37,44,35,39,34,45,43,38,44,39,43,40,42,41,48,46,43,42,41,46,48,45,50,43)

t.test(potencia,conf.level = 0.95)

#ps: nao vamos trabalhar com a média pontal. 
#como o intervalo de confiança exclui o 40, considero com 95% de certeza que as condições de funcionamento não estão dentro
#das normas. que era de 40 segundos.
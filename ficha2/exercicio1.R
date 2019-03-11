#--------------------------------------------------
# Proposta de resolução da Ficha TP2
#--------------------------------------------------
#Exercicio 1
# -------------------------------------------------
potencia=c(8.9,9.1,9.2,9.1,8.4,9.5,9.0,9.6,9.3,9.3,8.9,9.7,8.7,9.4,8.5,8.9,8.4,9.5,9.3,8.8,9.4,8.9,9.3,9.0,9.2,9.1,9.8,9.6,9.3,9.2,9.1,9.6,9.8,9.5,10.0,9.3)
#em nenhum momento sei se a distribuição é normal
#consultar intervalos confiança slides, n sei a distruibuição normal, não sei a variancia. mas se standarizar o intervalo de confiança vou usar a ultima opção do slide 12 dos slides intervaos de confiança
#mean média
x_bar=mean(potencia) 
n=36
#sd desvio padrao da potencia
sd_sample=sd(potencia)
#distribuição normal de media zero e desvio padrao de 0 a 1
z_q=qnorm(0.975,0,1)
#intervalo de confiança
IC_min=x_bar-z_q*sd_sample/sqrt(n)
IC_max=x_bar+z_q*sd_sample/sqrt(n)
c(IC_min,IC_max)
#IC_95%(mu) = [9.085739, 9.336483 ]

#OU

#como as caudas da t sao mais pesadas que a normal e tb mais achatada, o IC calculados por 
#esta estatistica terão maior amplitude

t.test(potencia,conf.level = 0.95)
#OUTPUT ::::::
#data:  potencia
#t = 144, df = 35, p-value < 2.2e-16
#alternative hypothesis: true mean is not equal to 0
#95 percent confidence interval:
#  9.081252 9.340970
#sample estimates:
#  mean of x 
#9.211111 

#Construa um intervalo de confiança para a potência média, utilizando um nível de significância de
#0,05. Há evidências de que a potência média seja diferente de 9,0? 
#Resposta : como 9.0 está fora do intervalo tenho 95% de certeza que o 9.0 não é média
#         : há evidencia estatistica que nos permita concluir, com um grau de confiança de 95%,
#           que a potencia média é diferente de 9,0 BTU
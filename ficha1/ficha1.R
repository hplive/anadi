#--------------------------------------------------
# Proposta de resolução da Ficha TP1
#--------------------------------------------------
#Exercicio 1
# -------------------------------------------------

Lexicos=c(2,3,0,0,3,2,1,2,1,2,2,3,4)
Sintaticos=c(5,2,1,0,2,4,5,6,3,6,4,7,12)
Semanticos=c(1,0,0,0,1,1,0,0,1,0,1,1,1)
Erros=data.frame(Lexicos,Sintaticos,Semanticos)
View(Erros) #abre uma nova vista com a dataframe
head(Erros) #impreme a dataframe na linha de comandos
nrow(Erros)
names(Erros)
dim(Erros)

#Alinea a
# a) Construa um gráfico com os diagramas de extremos e quartis (box plot) que nos permita
# analisar o comportamento dos alunos pelo n.º de erros cometidos de cada tipo. Qual o tipo
# de erro mais cometido? Analise o gráfico, referindo a concentração e a dispersão dos dados. 

boxplot(Erros) #Aqui faz um boxplot por variaveis
boxplot(Lexicos,Sintaticos,Semanticos,name=c("Lexicos","Sintaticos","Semanaticos"),main="Boxplot dos erros",ylab="número de erros")
boxplot(Erros,main="Boxplot dos erros",ylab="número de erros")
#Resposta: a linha no meio é a mediana. a box é 50% dos dados mais centrado.  abaixo da linha tenho 25% dos dados, acima tenho 25% dos dados , o resto está mais disperso
# Os maiores erros é o sintático, tb é o tipo de erros mais disperso. nos seanticos ha poucas erros dispersos, nos sintáticos há muito mais dispersão

#Alinea b
# b) Construa as tabelas de frequências para cada tipo de erro. Da análise da tabela indique o
# valor mediano de cada tipo de erro. Qual é o número de erros mais comum em cada tipo de
# erro?
#Tenho as freq absultas acumulados e as relativas acumuladas. vou tentar fazer tudo
table(Lexicos)
cbind(Freq=table(Lexicos)) #vou colar colunas e cada coluna é 
cbind(Freq=table(Lexicos),Freq.Acum=cumsum(table(Lexicos)),Freq.Rel=prop.table(table(Lexicos))) #o cbind cola colunas colar colunas 
cbind(Freq=table(Lexicos),Freq.Acum=cumsum(table(Lexicos)),Freq.Rel=prop.table(table(Lexicos))) # 
cbind(Freq=table(Lexicos),Freq.Acum=cumsum(table(Lexicos)),Freq.Rel=prop.table(table(Lexicos)),Freq.Rel.Acum=cumsum(prop.table(table(Lexicos)))) # prop quero calcular as proporções da cumsum é o cumulative sum do prop table
# Freq Freq.Acum   Freq.Rel Freq.Rel.Acum
# 0    2         2 0.15384615     0.1538462
# 1    2         4 0.15384615     0.3076923
# 2    5         9 0.38461538     0.6923077
# 3    3        12 0.23076923     0.9230769
# 4    1        13 0.07692308     1.0000000

#o numeros de erros mais comum é a moda, e a mediana é o numero que divide os numeros a meio
#o numero de erros que mais alunos cometem é o 2
# valor mediano é o dois, pq foi numa altura em que passei os 50% ou seja a 0.6923077 portanto . a mediana é a minha observação que divide os numeros a meio
#se olhar paraa a frequencia acumulada é a melhor forma. 

#Alinea C
# c) Determine a média, o desvio padrão, o mínimo e o máximo para cada tipo de erro. Com base
# nestas medidas o que pode afirmar sobre os dados? 
mean(Lexicos) #calcular a media
sd(Lexicos) #desvio padrao
min(Lexicos)
max(Lexicos)
quantile(Lexicos) #ler quantis, se so escrever isto da-me o quartis
quantile(Lexicos,0.1)
quantile(Lexicos,seq(0,1,0.1))
quantile(Lexicos,seq(0.25,0.8,0.1))
summary(Lexicos)

#Alinea d
# d) Construa um gráfico que permita visualizar a forma da distribuição de frequências da
# amostra. O que pode observar no gráfico? 

#nota:
#o nossos dados sao quantitativos, discretos ou continuo? discretos. se tenho dados quantitativos e discretos podia fazer o "bigodes". no fundo pede que faça um grafico que mostre a distribuição. 
# quando os dados sao discretos fazem-se graficos de barras, e nao histograma
barplot(Lexicos) #grafico com os lexicos
barplot(table(Lexicos)) #observo a moda, que ja tinhamos visto que era o 2
pie(table(Lexicos)) #grafico circular
pie(table(Lexicos),main="Grafico circular")
# Define some colors 
# link para legendas dos grafico https://stackoverflow.com/questions/37206472/how-can-i-make-legend-next-to-my-piechart-in-r
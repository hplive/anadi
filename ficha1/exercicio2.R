#--------------------------------------------------
# Proposta de resolu��o da Ficha TP1
#--------------------------------------------------
#Exercicio 2
# -------------------------------------------------

#importe dadaset do fichero .csv

#aLINEA A
Dados <- read.csv("C:/SandBox/anadi/DadosTP1AnaliseDesempenhocsv.csv", sep=";")
View(Dados)
Dados$WT.�ptimo #para n ter q fazer sempre o comando uso o :
attach(Dados)
WT.�ptimo
#detach(Dados)
ACO.rel=abs(ACO-WT.�ptimo)/WT.�ptimo
ACO.rel
PSO.rel=abs(PSO-WT.�ptimo)/WT.�ptimo
PSO.rel
ABC.rel=abs(ABC-WT.�ptimo)/WT.�ptimo
ABC.rel

stem(ACO.rel) #o stem � para fazer o histograma deitado
stem(PSO.rel)
stem(ABC.rel)

table(ACO.rel)

nclass.Sturges(ACO.rel)
classes.ACO=table(cut(ACO.rel,breaks = nclass.Sturges(ACO.rel)))#agrupo os dados num dado intervalo, vai dividir em 8 intervalos o numero de classes que calculei 
classes.ACO
#agota queremos calcular as varias tabelas das frequencias.
ACO.rel.classes=cbind(Freq=classes.ACO, Freq.acum=cumsum(classes.ACO),
                      Freq.rel=prop.table(classes.ACO),
                      Freq.rel.acum=cumsum(prop.table(classes.ACO)))
ACO.rel.classes

#aLINEA B
# b) Compare graficamente o desempenho das MH na resolu��o das inst�ncias em estudo. �
# poss�vel identificar uma t�cnica que seja a mais eficaz? 
boxplot(ACO.rel,PSO.rel,ABC.rel,names=c("ACO","PSO","ABC"),
        ylab="Erro relativo face ao �ptimo ( x 100%)") 
hist(ACO.rel)
hist(PSO.rel)
hist(ABC.rel)

#ALINEA C
summary(ACO.rel)
summary(PSO.rel)
summary(ABC.rel)
  
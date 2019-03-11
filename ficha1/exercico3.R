#--------------------------------------------------
# Proposta de resolução da Ficha TP1
#--------------------------------------------------
#Exercicio 3
# -------------------------------------------------

diplomados <- read.delim()
View(Diplomados)
names(diplomados)=c("Ano","Total","Masculino","Feminino")
attach(diplomados)

#alinea a
?ts
dipl.total=ts(Total,start=1999,frequency = 1)
dipl.total
ts.plot(dipl.total)
dipl.masc=ts(Masculino,start=1999,frequency = 1)
dipl.fem=ts(Feminino,start=1999,frequency = 1)
ts.plot(dipl.masc)
ts.plot(dipl.fem)
ts.plot(dipl.total,dipl.masc,dipl.fem, lty=c(1,4,6))
ts.plot(dipl.total,dipl.masc,dipl.fem, lty=c(1:3),main="Evolução dos diplomados")
legend("topleft", legend = c("Total","Masculino","Feminino"),lty=c(1:3))

#alinea b
dipl.df=ts(Masculino - Feminino, start=1999, frequency = 1)
ts.plot(dipl.df)
#----------------------------------------------------------
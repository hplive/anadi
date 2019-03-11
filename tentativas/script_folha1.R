#exercicio 1 
#contrução de uma matriz 
column.names<-c("Erros Léxicos","Erros Sintáticos","Erros Semanticos")
row.names<-c(1:13) #alunos de 1 a 13

dadosalunos=c(2,3,0,0,3,2,1,2,1,2,2,3,4,5,2,1,0,2,4,5,6,3,6,4,7,12,1,0,0,0,1,1,0,0,1,0,1,1,1)


# Take these vectors as input to the array.
result <- array(dadosalunos,c(3,3,2),list(row.names,column.names))
print(result)

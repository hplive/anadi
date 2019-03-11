x=c(2,3,5,7,11,13,17)
x
y=c(x ,13,14,17) # concatena¸c~ao de vectores
y
x-y
k=c('a','b') 
k=c("a","b") # vector de caracteres
kk =1:19 # criar vector com o comando
z=rep("ola",20)

q=seq(1,2000,2) #vetor gerado de 1 a 2000 de dois em dois

##lISTAS
Mlista=list(aluno=c('jose','joao','antonio','maria'), nota=c(12,15,9,13))
Mlista$aluno
Mlista$aluno[3]
Mlista$nota[3]


amostra =c(rep('L',4),rep('C',23),rep('D',16),rep ('o',7))
data = factor(amostra,c('L','C','D','O'),labels=c("Leitura","Cinema","Desporto","Outros"))
Tabela = table (data);
Tabela
Tabela.rel=prop.table(Tabela)
Tabela.rel

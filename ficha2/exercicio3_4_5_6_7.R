#--------------------------------------------------
# Proposta de resolu��o da Ficha TP2
#--------------------------------------------------
#Exercicio 3
# -------------------------------------------------
apl_A=c(11,12,10,15,13,11,12,14)
apl_B=c(12,9,11,13,9,10,11,12)
#http://www.academia.edu/8984708/Teste_t_para_amostras_independentes_Teste_t_para_amostras_emparelhadas

#EXERCICIO 3
#alinea a): Sao amostras independentes porque os individios foram selecionados aleatoriamente e de forma independente
# Era diferente se fossem garantidamente os mesmo utilizadores a usar a aplica��o a e b

# alinea b)
t.test(apl_A,apl_B, conf.level = 0.99, var.equal = TRUE, paired = FALSE )
# alinea c)
#IC=[-0.9572937  3.7072937]
#Podemos dizer com 99% de confian�a que a diferen�a dos tempos m�dios est� dentro do
#intervalo, mas nao podemos estimar o valor real dos tempos medios de consulta.
?t.test
#Resposta : com uma confian�a de 99% nao � possivel concluir que uma das app tem temo de consulta superior � outra
#(pois o IC abrange valores respetivos e positivos)
#Aumentado o tamanho das amostras ou diminuindo a confian�a

#EXERCICIO 4
print("exercicio 4")
RAM1=c(3.1,0.5,3.2,1.5,6.7,4.3,2.2,6.1,1.1,2.8,5.3,2.7)
RAM2=c(3.4,0.7,3.0,2.0,7.0,4.5,2.8,6.3,1.5,3.9,5.8,3.0)
#alinea a) - S�o amostras emparelhadas/dependentes porque os algoritmos s�o os mesmo mas em memorias diferentes

#ps: n�vel de signific�ncia de 1% � o IC de 99% ( conf.level=0.99 )
t.test(RAM1,RAM2, conf.level = 0.99, paired = T, var.equal = F)
#IC[-0.64322811,-0.09010523]
#(a diferen�a das m�dias das duas popula��es � negativa)
#H� evidencia estatistica que nos permita concluir, com uma confian�a de 99%, que a mem�ria 1 � mais eficiente
#mem�ria 1 � mais eficiente


#EXERCICIO 5
print("exercicio 5")
temp_A=c(67,70,66,68,68,72,65,65,66,68,69,67)
temp_B=c(69,65,65,70,71,71,69,70,71,66,68,69)

t.test(temp_A,temp_B,conf.level = 0.99,var.equal = TRUE,paired = FALSE)
#N�o podemos concluir. � inconclusivo. Temos um ic=[-3.556092 ,1.389425] 
#...do enunciado: Emparelhado, varianca igual.
#IC = [-3.556092  1.389425]
#Como o IC abrange valores negativos e positivos, entao NAO � possivel concluir, com
#99% de confian�a qual dos tecidos tem melhor resistencia � temp


############################ exercico 6


Arr_com_S=c(61,12,56,75,13,30,58,63,29,66,25,40)
Arr_sem_S=c(48,13,33,55,22,28,54,14,9,46,30,36)

t.test(Arr_com_S,Arr_sem_S,conf.level = 0.95, var.equal = FALSE,paired = TRUE)
#Nota: � emparelhada, porque os pcs que fazem os testes sao os mesmos.
#IC = [1.513997, 21.819336]

#h� evidencia estatistica que nos permita concluir com 95% de confian�a que o software
#influencia o tempo de arranque do pc.

##############EXERCICIO 7 ###########################
#SLIDE 15 iNTERVALOS DE CONFIAN�A
Dados <- read.csv("C:/SandBox/anadi/DadosTP1AnaliseDesempenhocsv.csv", sep=";")
View(Dados)
attach(Dados)

#alinea A)

sucessoACO=sum((WT.�ptimo-ACO)==0)
sucessoPSO=sum((WT.�ptimo-PSO)==0)
sucessoABC=sum((WT.�ptimo-ABC)==0)

#Alinea b)

#np >5 e n(1 - p) >= 5 numero de sucessos  vs numero de insucessos 
#so devemos fazer para as Meta Euristicas PSO e ABC

prop.test(sucessoPSO,length(PSO),conf.level = 0.97)
#IC=0.04697881 0.21654486

prop.test(sucessoABC,length(ABC),conf.level = 0.97)
#IC= 0.6325241 0.8549172

#h� evidencia estatistica que nos permita concluir com 95% de confian�a que o software
#influencia o tempo de arranque do pc.

prop.test(c(sucessoPSO,sucessoABC),c(75,75))
#IC=[-0.7859272,-0.5207395]
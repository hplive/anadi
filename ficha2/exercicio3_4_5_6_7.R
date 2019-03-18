#--------------------------------------------------
# Proposta de resolução da Ficha TP2
#--------------------------------------------------
#Exercicio 3
# -------------------------------------------------
apl_A=c(11,12,10,15,13,11,12,14)
apl_B=c(12,9,11,13,9,10,11,12)
#http://www.academia.edu/8984708/Teste_t_para_amostras_independentes_Teste_t_para_amostras_emparelhadas

#EXERCICIO 3
#alinea a): Sao amostras independentes porque os individios foram selecionados aleatoriamente e de forma independente
# Era diferente se fossem garantidamente os mesmo utilizadores a usar a aplicação a e b

# alinea b)
t.test(apl_A,apl_B, conf.level = 0.99, var.equal = TRUE, paired = FALSE )
# alinea c)
#IC=[-0.9572937  3.7072937]
#Podemos dizer com 99% de confiança que a diferença dos tempos médios está dentro do
#intervalo, mas nao podemos estimar o valor real dos tempos medios de consulta.
?t.test
#Resposta : com uma confiança de 99% nao é possivel concluir que uma das app tem temo de consulta superior à outra
#(pois o IC abrange valores respetivos e positivos)
#Aumentado o tamanho das amostras ou diminuindo a confiança

#EXERCICIO 4
print("exercicio 4")
RAM1=c(3.1,0.5,3.2,1.5,6.7,4.3,2.2,6.1,1.1,2.8,5.3,2.7)
RAM2=c(3.4,0.7,3.0,2.0,7.0,4.5,2.8,6.3,1.5,3.9,5.8,3.0)
#alinea a) - São amostras emparelhadas/dependentes porque os algoritmos são os mesmo mas em memorias diferentes

#ps: nível de significância de 1% é o IC de 99% ( conf.level=0.99 )
t.test(RAM1,RAM2, conf.level = 0.99, paired = T, var.equal = F)
#IC[-0.64322811,-0.09010523]
#(a diferença das médias das duas populações é negativa)
#Há evidencia estatistica que nos permita concluir, com uma confiança de 99%, que a memória 1 é mais eficiente
#memória 1 é mais eficiente


#EXERCICIO 5
print("exercicio 5")
temp_A=c(67,70,66,68,68,72,65,65,66,68,69,67)
temp_B=c(69,65,65,70,71,71,69,70,71,66,68,69)

t.test(temp_A,temp_B,conf.level = 0.99,var.equal = TRUE,paired = FALSE)
#Não podemos concluir. é inconclusivo. Temos um ic=[-3.556092 ,1.389425] 
#...do enunciado: Emparelhado, varianca igual.
#IC = [-3.556092  1.389425]
#Como o IC abrange valores negativos e positivos, entao NAO é possivel concluir, com
#99% de confiança qual dos tecidos tem melhor resistencia à temp


############################ exercico 6


Arr_com_S=c(61,12,56,75,13,30,58,63,29,66,25,40)
Arr_sem_S=c(48,13,33,55,22,28,54,14,9,46,30,36)

t.test(Arr_com_S,Arr_sem_S,conf.level = 0.95, var.equal = FALSE,paired = TRUE)
#Nota: é emparelhada, porque os pcs que fazem os testes sao os mesmos.
#IC = [1.513997, 21.819336]

#há evidencia estatistica que nos permita concluir com 95% de confiança que o software
#influencia o tempo de arranque do pc.

##############EXERCICIO 7 ###########################
#SLIDE 15 iNTERVALOS DE CONFIANÇA
Dados <- read.csv("C:/SandBox/anadi/DadosTP1AnaliseDesempenhocsv.csv", sep=";")
View(Dados)
attach(Dados)

#alinea A)

sucessoACO=sum((WT.óptimo-ACO)==0)
sucessoPSO=sum((WT.óptimo-PSO)==0)
sucessoABC=sum((WT.óptimo-ABC)==0)

#Alinea b)

#np >5 e n(1 - p) >= 5 numero de sucessos  vs numero de insucessos 
#so devemos fazer para as Meta Euristicas PSO e ABC

prop.test(sucessoPSO,length(PSO),conf.level = 0.97)
#IC=0.04697881 0.21654486

prop.test(sucessoABC,length(ABC),conf.level = 0.97)
#IC= 0.6325241 0.8549172

#há evidencia estatistica que nos permita concluir com 95% de confiança que o software
#influencia o tempo de arranque do pc.

prop.test(c(sucessoPSO,sucessoABC),c(75,75))
#IC=[-0.7859272,-0.5207395]
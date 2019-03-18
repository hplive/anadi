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



# aprendizado supervisionado
# classifica��o -> discreto
# exemplo: [bom, ruim]

# regress�o -> continuo
# exemplo: [110.55, 45678.00]

# algoritmos existentes:
# knn -> visinhos mais proximos
# nave bayes -> probabilidade
# svm -> suporte vector machine
# arvore -> arvore com possibilidades

# exempo de knn
# fun��o de ativa��o
# distancias, manhatan ou enquidiana
# por proximidade, exemplo: A - B - X - B - A
# pegar os 3 proximos a x, exemplo: A - [B - X - B - A]
# quantos B = 2, A = 1, logo x � B.

#classifica��o pratica com bayes
#install.packages('e1071', dependencies = TRUE)

library(e1071)

credito = read.csv(file.choose(), sep = ',', header = TRUE)

dim(credito)

View(credito)

# possibilidades de classe.
levels(credito$class)

# Dividir os dados historicos em dois grupos
# Grupo de treino -> modelo
# Grupo de teste -> validar o modelo
# 70% / 30%

amostra = sample(2, 1000, replace = TRUE, prob = c(0.7, 0.3))
amostra

#treino e teste

creditotreino = credito[amostra == 1, ]
creditoteste = credito[amostra == 2, ]

dim(creditotreino)
dim(creditoteste)

# cria��o do modelo de treinamento
# naive bayes -> tabela de probabilidades

# use o atributo(class) para classificar
# ~ . usando todos os atributos
# treine com o modelo: creditotreino
modelo = naiveBayes(class ~ . , creditotreino)
modelo

help(naiveBayes)

# valida��o -> predict, no conjunto de dados de teste. 
# efetua a predicao frente ao modelo e a inferencia que existe.
previsoes = predict(modelo, creditoteste)
previsoes

# m�tricas de desempenho
previsoes[1]
creditoteste$class[1]

# tabela de confus�o
confusao = table(creditoteste$class, previsoes)
confusao

# taxa de acerto dado um determinado treinamento.
taxac = (confusao[1] + confusao[4]) / sum(confusao)
taxac

# Teste de uma instancia
nova_amostra = read.csv(file.choose(), sep = ',', header = TRUE)

View(nova_amostra)

# Aten��o ->> a classifica��o leva em considera��o o mesmo conjunto de dados;

# predict -> previs�o
# criando coluna de class
nova_amostra$class = predict(modelo, nova_amostra)

nova_amostra



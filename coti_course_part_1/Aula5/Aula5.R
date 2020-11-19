# svm - support vector machine
# e1071

library(e1071)

credito = read.csv(file.choose(), sep = ',', header = TRUE)

View(credito)

fix(credito)

# amostra 70% 30%
amostra = sample(2, 1000, replace = TRUE, prob = c(0.7, 0.3))

amostra

creditoTreino = credito[amostra==1, ]
creditoTeste = credito[amostra==2, ]

dim(creditoTreino)
dim(creditoTeste)

# . representa todos os atributos dos dados, logo as colunas
modelo = svm(class ~ ., creditoTreino)

previsoes = predict(modelo, creditoTeste)
previsoes

#validacao
confusao = table(previsoes, creditoTeste$class)

#diagonal principal é o acerto.
confusao

# accuracy = score
score1 = ((confusao[1] + confusao[4]) / sum(confusao))
score1


# seleção de atributos - melhores atributos 
# cada método seleção mede o atributo de forma diferente
# rank, relevancia, porcentagem

#install.packages('Fselector', dependencies = TRUE)

library(FSelector)

# chegando a importancia de cada atributo
random.forest.importance(class ~ ., credito)

# treinando o modelo com os melhores atributos
modelo = svm(class ~ checking_status + duration + credit_history + credit_amount + savings_status,
             creditoTreino)
#fazendo previsão
previsoes = predict(modelo, creditoTeste)

#obtendo acuracia
confusao1 = table(previsoes, creditoTeste$class)
confusao1

#obtendo porcentagem de acerto
score2 = ((confusao1[1] + confusao1[4])/ sum(confusao1))
score2

# comparação de scores
score1
score2





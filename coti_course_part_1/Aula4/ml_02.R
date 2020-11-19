
# arvore de decisao

#install.packages('rpart', dependencies = TRUE)

library(rpart)

credito = read.csv(file.choose(), sep = ',', header = TRUE)

# Amostra
amostra = sample(2, 1000, replace = TRUE, prob = c(0.7, 0.3))
amostra

# Treino e teste
creditotreino = credito[amostra == 1, ]
creditoteste = credito[amostra == 2, ]

dim(creditotreino)
dim(creditoteste)

# criação do modelo de arvore de decisao
# classificação -> method -> class
# regressão -> method -> anova

# arvore -> arvore de decisão
# o treinamento da arvore, aplica um galo maior dada a repetiação
# de algum atributo
arvore = rpart(class ~ . , data = creditotreino, method = 'class')

arvore
plot(arvore)

# melhorar a exibição de arvore
text(arvore, use.n = TRUE, all = TRUE, cex = 0.8)

# validando os dados do teste
previsoes = predict(arvore, newdata = creditoteste)
previsoes


cred = cbind(creditoteste, previsoes)

fix(cred)

cred['result'] = ifelse(cred$good >= 0.75, 'good', 'bad')


# calculo da matriz de confusão
confusao = table(cred$class, cred$result)
confusao

# taxa de acerto
taxac = (confusao[1] + confusao[4] / sum(confusao))
taxac



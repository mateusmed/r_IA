# ensamble learning
# multiplas arvores de decisão
# random Forest -> varias arvores de decisão

#install.packages("randomForest", dependencies = TRUE)

library(randomForest)

#usando o carregamento dos dados do arquivo anterior
dim(creditoTreino)
dim(creditoTeste)

floresta = randomForest(class ~. , data = creditoTreino, ntree = 100, importance=TRUE)
floresta

previsoes = predict(floresta, creditoTeste)
previsoes

confusao2 = table(previsoes, creditoTeste$class)
confusao2

score3 = ((confusao2[1] + confusao2[4])/ sum(confusao2))
score3


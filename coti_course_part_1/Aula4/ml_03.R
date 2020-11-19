
# aprendizado baseado em instancia
# nesse tipo de aprendizado não é criado um modelo

# o conjunto de dados -> KNN - apenas numeros
#install.packages('class', dependencies = TRUE)

library(class)


head(iris)
tail(iris)

dim(iris)

levels(iris$Species)

#Treino e teste
amostra = sample(2, 150, replace = TRUE, prob = c(0.7, 0.3))
amostra 

#separar treino e teste

iristreino = iris[amostra == 1, ]
iristeste = iris[amostra == 2, ]

dim(iristreino)
dim(iristeste)

# treinar

previsoes = knn(iristreino[, 1:4], # conjunto de dados de treino
                iristeste[, 1:4], # conjunto de dados de teste
                iristreino[, 5], # conjunto de dados da class de treino ( "setosa" "versicolor" "virginica" )
                k = 7            # numero de visinhos mais proximos
                )

previsoes

# validar
# matriz de confusao
confusao = table(iristeste[, 5], previsoes)
confusao

# taxa de acerto
# diag pega a diagonal principal
# diag(confusao)
sum(diag(confusao)) / sum(confusao) * 100










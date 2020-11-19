# deep learning

#install.package('neuralnet', dependencies = TRUE)

library(neuralnet)

#conjunto de dados iris
myiris = iris


# Binarizar o iris
# TRUE / FALSE

myiris = cbind(myiris, myiris$Species == 'setosa')
myiris = cbind(myiris, myiris$Species == 'versicolor')
myiris = cbind(myiris, myiris$Species == 'virginica')

View(myiris)

# Alterar os nomes das colunas
names(myiris)[6] = 'setosa'
names(myiris)[7] = 'versicolor'
names(myiris)[8] = 'virginica'

View(myiris)

# Amostra - treino e teste

amostra = sample(2, 150, replace = TRUE, prob = c(0.7, 0.3))

myiristreino = myiris[amostra == 1, ]
myiristeste = myiris[amostra == 2, ]

dim(myiristreino)
dim(myiristeste)

modelo =  neuralnet(setosa + versicolor + virginica ~ 
                    Sepal.Length + Sepal.Width + 
                    Petal.Length + Petal.Width,
                    myiristreino,  
                    hidden = c(5, 4)) # primeira camada oculta 5, 4 segunda camadaoculta # aleatorio

modelo
plot(modelo)

teste = compute(modelo, myiristeste[, 1:4])
teste$net.result


resultado = as.data.frame(teste$net.result)

names(resultado)[1] = 'setosa'
names(resultado)[2] = 'versicolor'
names(resultado)[3] = 'virginica'


head(resultado)

resultado$class = colnames(resultado[, 1:3])[max.col(resultado[, 1:3], 
                                                     ties.method = 'first')]

resultado$class
View(resultado)

confusao = table(resultado$class, myiristeste$Species)
confusao


sum(diag(confusao * 100 / sum(confusao)))







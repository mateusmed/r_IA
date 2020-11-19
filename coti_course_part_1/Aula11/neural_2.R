# instalar a rede neural h2o

#install.packages('h2o', dependencies = TRUE)
library(h2o)

# Iniciando o processo local do h2o
h2o.init()

# treino e teste
treino = h2o.importFile(file.choose())
teste = h2o.importFile(file.choose())

# transformando em fator
# classe
treino[, 785] = as.factor(treino[, 785])
teste[, 785] = as.factor(teste[, 785])


#treinamento
modelo = h2o.deeplearning(x = colnames(treino[, 1:784]), # colunas de treinamento
                          y = "C785", # coluna da classificação
                          training_frame = treino, # dados de treino
                          validation_frame = teste,  # dados de teste
                          distribution = "AUTO", #  ?
                          activation = "RectifierWithDropout", # função de ativação
                          hidden = c(64, 64, 64), # quantidade de camadas ocultas
                          sparse = TRUE, # mais eficiente para conjunto de dados numericos
                          epochs = 20) # epocas, steps numeros de loops
                          

plot(modelo)

h2o.performance(modelo)


pred = h2o.predict(modelo, newdata = teste[20, 1:784])
pred 







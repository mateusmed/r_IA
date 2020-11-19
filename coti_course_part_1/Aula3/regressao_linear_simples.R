# 1    --- positiva perfeita
# 0.8
# 0    --- inexistente
# -0.8 
# -1   --- negativa perfeita

# range valido [0.8 a 1]
# range valido [- 0.8 a -1]

# regreção
# simples, multipla, logistica

# extrapolação vs predição
# extrapolação é avaliar valores não validos
# exemplo, plano de saude para uma pessoa de 200 anos.
# predição - é a distancia do ponto a linha da média
# logo tem uma formula:
# intersecção ()


# conjunto de dados de carros instalados no R
# prever a distancia até frear dada uma velocidade

dim(cars)
summary(cars)
head(cars)

help(cars)

cars

# correlação
cor(cars)

# função para criar o modelo de regressão linear
modelo = lm(speed ~ dist, data = cars)

#Coefficients:
#  (Intercept)   dist - é a inclinação
#   8.2839       0.1656
modelo

plot(modelo)

# a linha é o melhor ajuste
plot(speed ~ dist, data = cars)
abline(modelo)


# prever a velocidade de parada do carro
# formula da previsão = intersecção + (declive * valor_previsto)
# a inclinação é a inclinação, da linha  até chegar ao ponto

# intersecção
modelo$coefficients[1]

#inclinação
modelo$coefficients[2]

# parada a 22 pés
modelo$coefficients[1] + modelo$coefficients[2] * 22

# função predict - usado para efetuar a previsão
predict(modelo, data.frame(dist = 22))
predict(modelo, data.frame(dist = 50))


predict(modelo, data.frame(dist = c(22, 50)))










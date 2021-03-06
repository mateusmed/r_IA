# 1    --- positiva perfeita
# 0.8
# 0    --- inexistente
# -0.8 
# -1   --- negativa perfeita

# range valido [0.8 a 1]
# range valido [- 0.8 a -1]

# regre��o
# simples, multipla, logistica

# extrapola��o vs predi��o
# extrapola��o � avaliar valores n�o validos
# exemplo, plano de saude para uma pessoa de 200 anos.
# predi��o - � a distancia do ponto a linha da m�dia
# logo tem uma formula:
# intersec��o ()


# conjunto de dados de carros instalados no R
# prever a distancia at� frear dada uma velocidade

dim(cars)
summary(cars)
head(cars)

help(cars)

cars

# correla��o
cor(cars)

# fun��o para criar o modelo de regress�o linear
modelo = lm(speed ~ dist, data = cars)

#Coefficients:
#  (Intercept)   dist - � a inclina��o
#   8.2839       0.1656
modelo

plot(modelo)

# a linha � o melhor ajuste
plot(speed ~ dist, data = cars)
abline(modelo)


# prever a velocidade de parada do carro
# formula da previs�o = intersec��o + (declive * valor_previsto)
# a inclina��o � a inclina��o, da linha  at� chegar ao ponto

# intersec��o
modelo$coefficients[1]

#inclina��o
modelo$coefficients[2]

# parada a 22 p�s
modelo$coefficients[1] + modelo$coefficients[2] * 22

# fun��o predict - usado para efetuar a previs�o
predict(modelo, data.frame(dist = 22))
predict(modelo, data.frame(dist = 50))


predict(modelo, data.frame(dist = c(22, 50)))










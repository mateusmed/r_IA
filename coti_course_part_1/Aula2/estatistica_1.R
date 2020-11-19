
#Amostras
#categorização de flores
help(iris)

View(iris)

dim(iris)

#vendo os 10 primeiros
head(iris, 10)

#vendo os 10 ultimos
tail(iris, 10)

#amostra aleatória
# me de aleatótiamene uma amostra de 150 numeros, 
# pode ter repetição nessa amostra
# e me de uma propabilidade de encontrar 50% dos elementos 0
# e me de uma propabilidade de encontrar 50% dos elementos 1
amostra = sample(c(0, 1), 150, replace = TRUE, prob = c(0.5, 0.5))

amostra

length(amostra [ amostra == 1 ])
length(amostra [ amostra == 0 ])
length(amostra)

#o que ele gera é um vetor
class(amostra)

#função set.seed() -> mantem constante a sememente de aleatoriedade
set.seed(2345)

sample(c(100), 1)





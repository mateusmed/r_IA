
#Amostras
#categoriza��o de flores
help(iris)

View(iris)

dim(iris)

#vendo os 10 primeiros
head(iris, 10)

#vendo os 10 ultimos
tail(iris, 10)

#amostra aleat�ria
# me de aleat�tiamene uma amostra de 150 numeros, 
# pode ter repeti��o nessa amostra
# e me de uma propabilidade de encontrar 50% dos elementos 0
# e me de uma propabilidade de encontrar 50% dos elementos 1
amostra = sample(c(0, 1), 150, replace = TRUE, prob = c(0.5, 0.5))

amostra

length(amostra [ amostra == 1 ])
length(amostra [ amostra == 0 ])
length(amostra)

#o que ele gera � um vetor
class(amostra)

#fun��o set.seed() -> mantem constante a sememente de aleatoriedade
set.seed(2345)

sample(c(100), 1)





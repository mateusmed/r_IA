# Treinamento não supervisionado

# Agrupamento:
# kmeans - baseado em média
# kmedoids - ponto real
# c-means - probabilidade

# obs: o sergio precisa dar regressão linear

head(iris)
tail(iris)

# criar uma variavel cluster
# definir o numero de clusters
# centers = numeros de grupos
# iris -> 150 dados , 5 colunas
# 3 classes - setosa, versicolor e virginica

cluster = kmeans(iris[, 1:4], centers = 3)
cluster

#matriz de confusao
# aqui estamos classificando os 3 grupos
table(iris$Species, cluster$cluster)

#plotagem dos dados, devido a analise podemos saber que virginica 
# tem os dados muito distantes das outras classes
plot(iris [, 1:4], col = cluster$cluster)










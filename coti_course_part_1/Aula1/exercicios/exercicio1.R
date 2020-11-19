# exercicio meu, objetivo criar um "dataset" de array

vetor1 = round(rnorm(16, m = 10, sd = 5))
print(vetor1)

tabela1 = matrix(vetor1, ncol = 4)
print(tabela1)

vetor2 = round(rnorm(16, m = 10, sd = 5))
print(vetor1)

tabela2 = matrix(vetor2, ncol = 4)
print(tabela2)

#linhas --- personagens
#colunas --- skill

herois = c("kratos", "sonic", "link", "mario")
viloes = c("dartVader", "bowser", "baldur", "roboTinic")
habilidades = c("forca", "velocidade", "resistencia", "inteligencia")

dimnames(tabela1) = list(herois, habilidades)
dimnames(tabela2) = list(viloes, habilidades)

print(tabela1)
print(tabela2)

nomeTabelaHerois = list(herois, habilidades)
nomeTabelaViloes = list(viloes, habilidades)

print(nomeTabelaHerois)
print(nomeTabelaViloes)

myData = array(c(tabela1, tabela2), 
               dim = c(4, 4, 2))

newVetor = c(herois, habilidades)

dimnames(myData[,,1])[[1]] = herois
dimnames(myData[,,1])[[2]] = habilidades

dimnames(myData[,,2])[[1]] = viloes
dimnames(myData[,,2])[[2]] = habilidades

dimnames(myData[,,1]) = nomeTabelaViloes
dimnames(myData[,,2]) = nomeTabelaHerois

dimnames(myData[,,1]) = list(nomeTabelaHerois)

print(myData)

print(myData[,(2:3),2])
print(myData[(2:3),,2])



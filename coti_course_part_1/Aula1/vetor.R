# criar um vetor de caracteres
c = 10

vetor = c(1, 2, 3, 4, 5, 6, 7)
nomes = c("Maria", "João", "Luiz")

vetor

nomes[1]

length(nomes)
length(vetor)

is.vector(vetor)

numeros = 1:10 # criação de vetor com um intervalo;

print(numeros)

numeros2 = seq(0, 1, by=0.1)

print(numeros2)

vetor_caracter = c("a", numeros)
print(vetor_caracter)


# não se usa for; pois o R utiliza algebra linear 
# e consegue fazer aritimetica e sem interações 
#da maneira que conhecemos;

for (i in numeros){
  print(paste("The number is", i))
}

# portanto ele consegue fazer aritimética para todas as posições do vetor,
# assim como no exemplo abaixo;

# Operações matematicas, com vetores no R
operacao = c(10, 20, 30, 40)

operacao + 3
operacao - 3
operacao * 3
operacao / 3

round(operacao/3)

repetidos = rep(1, 5)
print(repetidos)

repetidos2 = rep(c(1,2), c(3,4))
print(repetidos2)


n = c("lucas", "bia", "Rui")
print(n)


paste(n, 1:3)

paste("maria", 2)

#concatene em "t" o intervalo de 1 à 3 depois repita (4, 4, 3)
# portanto: "T1" "T1" "T1" "T1" "T2" "T2" "T2" "T2" "T3" "T3" "T3"
#Irado!
rep(paste("T", 1:3, sep=""), c(4, 4, 3))


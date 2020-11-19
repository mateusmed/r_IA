#criando um fator
# Fatores contém levels e são objetos de classes diferentes do vetor


#vetor
estados = c("RJ", "SP", "MG")
estados

# provando que vetor não é uma classe
class(estados)
attributes(estados)

estadosf = factor(estados)
estadosf
class(estadosf)
attributes(estadosf)

pessoas <-  c("Rui", "Bia", "Ana","Leo", "Nat","Rui", "Leo", "Bia", "Leo")

pessoas
# olha mano, ele conta as repetições. IRADO!
table(pessoas)

pessoasn = factor(pessoas, levels = c("Ana", "Rui", "Bia", "Nat", "Leo", "Bob"))

print(pessoasn)

table(pessoasn)
#contagem de ocorrências ==> saida;
#Ana Rui Bia Nat Leo Bob 
#1   2   2   1   3   0

pessoassite = pessoasn
levels(pessoassite)

#critério de grupo
# aqui grosseiramente falando é como se estivessemos categorisando os itens
# anterior "sobrescrevendo" seu levels;
levels(pessoassite) = c("site", "site", "site", "site", "app", "app")

#depois eu peço para contar. a partir da minha "categorização"
table(pessoassite)

#então: 
#site  app 
#6    3

print(pessoassite)


grau = c("medio", "baixo", "medio", "alto", "medio", "alto", "medio")
table(grau)

factor(grau, ord = T)

#função de ordenação
ordered(grau, levels=c("baixo", "medio", "alto"))

vec = 1:10

vec
rev(vec)

#criação dinamica
# crie 7 valos, para uma media de 70 com desvio padrão de 10
vec = round(rnorm(7, m = 70, sd = 10))

vec

#ordena
sort(vec)

#rankeamento
rank(vec)

#which -> posição do elemento que obedece um determinado criterio
vec

which(vec > 67)

#64 75 57 76 67 98 76 --nascendo
#2.0 4.0 1.0 5.5 3.0 7.0 5.5

which.max(vec)
which.min(vec)

#removendo itens
vec[-5]
#possivel remover itens em um range;
vec[-(2:4)]




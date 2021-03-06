#criando um fator
# Fatores cont�m levels e s�o objetos de classes diferentes do vetor


#vetor
estados = c("RJ", "SP", "MG")
estados

# provando que vetor n�o � uma classe
class(estados)
attributes(estados)

estadosf = factor(estados)
estadosf
class(estadosf)
attributes(estadosf)

pessoas <-  c("Rui", "Bia", "Ana","Leo", "Nat","Rui", "Leo", "Bia", "Leo")

pessoas
# olha mano, ele conta as repeti��es. IRADO!
table(pessoas)

pessoasn = factor(pessoas, levels = c("Ana", "Rui", "Bia", "Nat", "Leo", "Bob"))

print(pessoasn)

table(pessoasn)
#contagem de ocorr�ncias ==> saida;
#Ana Rui Bia Nat Leo Bob 
#1   2   2   1   3   0

pessoassite = pessoasn
levels(pessoassite)

#crit�rio de grupo
# aqui grosseiramente falando � como se estivessemos categorisando os itens
# anterior "sobrescrevendo" seu levels;
levels(pessoassite) = c("site", "site", "site", "site", "app", "app")

#depois eu pe�o para contar. a partir da minha "categoriza��o"
table(pessoassite)

#ent�o: 
#site  app 
#6    3

print(pessoassite)


grau = c("medio", "baixo", "medio", "alto", "medio", "alto", "medio")
table(grau)

factor(grau, ord = T)

#fun��o de ordena��o
ordered(grau, levels=c("baixo", "medio", "alto"))

vec = 1:10

vec
rev(vec)

#cria��o dinamica
# crie 7 valos, para uma media de 70 com desvio padr�o de 10
vec = round(rnorm(7, m = 70, sd = 10))

vec

#ordena
sort(vec)

#rankeamento
rank(vec)

#which -> posi��o do elemento que obedece um determinado criterio
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




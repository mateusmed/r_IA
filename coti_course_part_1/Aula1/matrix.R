#matrizes
#criação de matriz

#preenche a matriz colunarmente; nc = numero de colunas
m1 = matrix(1:6, nc = 3)

print(m1)

m2 = matrix(10 * (1:6), ncol = 3)

print(m2)

m1 + m2
m1 - m2
m1 * m2
m1 / m2

#produto;
m1 ** m2

#transposta
t(m1)

# T ???
m1 = matrix(1:12, ncol = 3, byrow = T)

#tamanho
length(m1)

#dimensão
dim(m1)

#linhas
nrow(m1)

#colunas
ncol(m1)

#elementos na posição - linha | coluna;
m1[1, 2]

#elementos na posição de linha 3
m1[3, ]

#nome nas dimensões
dimnames(m1)

dimnames(m1) = list(c("L1", "L2", "L3", "L4"), c("C1", "C2", "C3"))

dimnames(m1)


m1["L1", ]

m1[1, ]

#criando matrix juntando 2 vetores
m2 = cbind(1:5, 6:10)

print(m2)


m3 = cbind(1:5, 6)
m3

print(m1)

#funções de tabela. margin só funciona para a soma.
margin.table(m1, margin = 1) # soma todas as linhas
margin.table(m1, margin = 2) # soma todas as colunas


# dimensão o apply podemos passar o padrão aritimético
# para ele fazer em uma determinada dimensão
apply(m1, 1, sum)
apply(m1, 2, sum)

colSums(m1)




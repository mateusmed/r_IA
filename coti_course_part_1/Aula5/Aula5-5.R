# apriore, olhar as fotos do quadro.

# associa��o e confian�a;

#install.packages("arules", dependencies = TRUE)
#install.packages("aruleviz", dependencies = TRUE)

library(arules)
library(arulesViz)

# entendendo o conjunto de dados
# colocando o conjunto de dados formato baskety

# pegando o cursos txt
transacoes = read.transactions(file.choose(), sep = ',', format = 'basket')

inspect(transacoes)

# tipo de visualiza��o
image(transacoes)

# suport � a quantidade que um evento apareceu nas transa��es
# confian�a � a probabilidade de um evento correlacionado aparecer nas transa��es
# exemplo: {BI} => {Banco}  0.1666667 1.0000000
# 16% de aparecer nas transa��es
# 100% de {BI} aparecer com {BANCO}
                                            #suporte     confian�a
regras = apriori(transacoes, parameter = list(sup = 0.1, conf = 0.5))

inspect(regras)


# PEGAR O PLOT NO ARQUIVO MANDADO PELO SERGIO NO EMAIL.












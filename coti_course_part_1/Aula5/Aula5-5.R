# apriore, olhar as fotos do quadro.

# associação e confiança;

#install.packages("arules", dependencies = TRUE)
#install.packages("aruleviz", dependencies = TRUE)

library(arules)
library(arulesViz)

# entendendo o conjunto de dados
# colocando o conjunto de dados formato baskety

# pegando o cursos txt
transacoes = read.transactions(file.choose(), sep = ',', format = 'basket')

inspect(transacoes)

# tipo de visualização
image(transacoes)

# suport é a quantidade que um evento apareceu nas transações
# confiança é a probabilidade de um evento correlacionado aparecer nas transações
# exemplo: {BI} => {Banco}  0.1666667 1.0000000
# 16% de aparecer nas transações
# 100% de {BI} aparecer com {BANCO}
                                            #suporte     confiança
regras = apriori(transacoes, parameter = list(sup = 0.1, conf = 0.5))

inspect(regras)


# PEGAR O PLOT NO ARQUIVO MANDADO PELO SERGIO NO EMAIL.












# distribuição de um intervalo de tempo
# distribuição de poisson
# media - 2 acidentes por ano
# quais as changes de acidentes


# 3 acidentes 
# lambda representa a média de acidentes.
# qual a probabilidade de um evento acontecer dado que:
#  3 acidentes, uma vez que a média de acidentes é 2
dpois(3, lambda = 2)

# x <= 3
ppois(3, lambda = 2)

# x > 3 --> inversão;
ppois(3, lambda = 2, lower.tail = FALSE)




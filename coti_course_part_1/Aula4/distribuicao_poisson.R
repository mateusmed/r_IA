# distribui��o de um intervalo de tempo
# distribui��o de poisson
# media - 2 acidentes por ano
# quais as changes de acidentes


# 3 acidentes 
# lambda representa a m�dia de acidentes.
# qual a probabilidade de um evento acontecer dado que:
#  3 acidentes, uma vez que a m�dia de acidentes � 2
dpois(3, lambda = 2)

# x <= 3
ppois(3, lambda = 2)

# x > 3 --> invers�o;
ppois(3, lambda = 2, lower.tail = FALSE)




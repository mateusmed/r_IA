# distribuicao normal,
# calculo de probabilidade

# desenhar a tabela ---- para entender melhor
# 0.2
# 2.1
# 13.6
# 34
# 34
# 13.6
# 2.1
# 0.2

# probabilidade de encontrar um objeto menor que 6kg
# media de 8kg, desvio padrao de 2kg
pnorm(6, 8, 2)

inverso = (1 - pnorm(6, 8, 2))

value = (1 - pnorm(6, 8, 2, lower.tail = FALSE))

# somatorio do intervalo não encontrado
resultado = (pnorm(10, 8, 2, lower.tail = FALSE) + pnorm(6, 8, 2))

# 
resultado2 = (pnorm(10, 8, 2) - pnorm(6, 8, 2))















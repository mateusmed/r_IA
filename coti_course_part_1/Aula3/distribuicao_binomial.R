# calculo de probabilidade binomial
# dbinom()

# x -  numero de suscessos aguardados
# size -  numero de eventos
# porcentagem - probabilidade

# 3 - numero de acertos aguardados
# 5 tentativas - numero de eventos
# 0.5 -- 50%
#dbinom(x, size, porcentagem)    
dbinom(3, 5, 0.5)


#sinal de 4 tempos
# nenhum sinal aberto -> 4 sinais
# 0 sucessos
# 4 sinais
# 0.25 -- 4 tempos, portanto 0.25 é 1 em 4 tempos
dbinom(0, 4, 0.25)


#sinal de 4 tempos
# 2 sucessos
# 4 sinais
# 0.25 -- 4 tempos, portanto 0.25 é 1 em 4 tempos
dbinom(2, 4, 0.25)


#sinal de 4 tempos
# 3 sucessos
# 4 sinais
# 0.25 -- 4 tempos, portanto 0.25 é 1 em 4 tempos
dbinom(3, 4, 0.25)

#sinal de 4 tempos
# 4 sucessos
# 4 sinais
# 0.25 -- 4 tempos, portanto 0.25 é 1 em 4 tempos
dbinom(4, 4, 0.25)


# probabilidade acumulativa (pbinom != dbinom) <= se liga
# sinal de 4 tempos
# 4 sucessos
# 4 sinais
# 0.25 -- 4 tempos, portanto 0.25 é 1 em 4 tempos
# portanto ele vai somar todas as probabilidades logo vai dar 1.
pbinom(4, 4, 0.25)









# Distribui��o normal
# diagrama de normalidade usando a funa��o rnorm()
# criar um conjunto de dados com numeros normalmente distribuidos, 100 dados

help(rnorm)

# gerando dados
x = rnorm(100)

#gerar grafico de normalidade
# distribuindo os dados
qqnorm(x)
# aplicando linha
qqline(x)

# se o meu p-value retornar um valor maior de 0.05
# o teste de hipotese n�o � nula
# dizer q uma hipotese � nula tem q estar dentro de 0.05
# se os dados n�o estivem dentro de 0.05 
# data:  x
# W = 0.96391, p-value = 0.007717
# disse que o W � dispresivel, mas eles parecem ser complementares;
# depois pesquisar oq o w significa
shapiro.test(x)

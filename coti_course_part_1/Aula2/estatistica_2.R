#geração de amostra estratificada
#conjunto de dados do iris analisar o atributo especies.
# gerar amostras de tamanho fixo escolhidas aleatoriamente
# Summary -> tabela estatistica basica
View(summary(iris))

# Pacote para amostra estratificadas
#install.packages('sampling')

library(sampling)

amostrairis = strata(iris, 
                     c('Species'), 
                     size = c(25, 25, 25), # 25 das 3 classes
                     method = 'srswor') #amostra sem reposição

help(strata)


summary(amostrairis)

summary(infert)

help(infert)

# 248  8
dim(infert)

#0-5yrs : 12
#6-11yrs:120
#12+ yrs:116

# calculo para não enviesar os dados
# dado que queremos pegar 100 itens desse dataSet
class1 = round(12 / 248 * 100)
class2 = round(120 / 248 * 100)
class3 = round(116 / 248 * 100)

amostra = strata(infert, c('education'), 
                 size = c(class1, class2, class3),
                 method = 'srswor')

dim(amostra)

summary(amostra)

amostra

class(amostra)

amostra$education

#NÃO ESTA FUNCIONANDO;
# É PARA FAZER:
# tentar pegar as os dados que estão com o nome da coluna: 0-5yrs
result = filter(amostra, amostra$education == '0-5yrs')
result





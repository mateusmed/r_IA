# regress�o logistica
# usa o csv de candidatos


eleicao = read.csv(file.choose(), sep = ';', header = TRUE)

eleicao

fix(eleicao)

View(eleicao)

# verifica a amplitude dos dados
summary(eleicao)

# correla��o
cor(eleicao$DESPESAS, eleicao$SITUACAO)

plot(eleicao$DESPESAS, eleicao$SITUACAO)


modelo = glm(SITUACAO ~ DESPESAS, data = eleicao, family = 'binomial')

modelo


# pch � o estilo de icone o 20 � uma bola vermelha
plot(eleicao$DESPESAS, eleicao$SITUACAO, col = 'red', pch = 20)

# pch � o estilo de icone o 4 � um X
points(eleicao$DESPESAS, modelo$fitted.values, pch = 4)

# carregamento de arquivos novos candidatos.
peleicao = read.csv(file.choose(), sep = ';', header = TRUE)


fix(peleicao)

# criando uma nova coluna, essa tabela n�o tem uma coluna situa��o
peleicao$SITUACAO = predict(modelo, newdata = peleicao, type = 'response')

fix(peleicao)

# criando uma condi��o, portanto crie e adicine na coluna result if situa�ao > 85
peleicao$SITUACAO = (peleicao$RESULT * 100 > 85)

# se situa��o == TRUE, 1 se n�o 0
peleicao$SITUACAO = ifelse(peleicao$SITUACAO == TRUE, 1, 0)

fix(peleicao)






# regressão logistica
# usa o csv de candidatos


eleicao = read.csv(file.choose(), sep = ';', header = TRUE)

eleicao

fix(eleicao)

View(eleicao)

# verifica a amplitude dos dados
summary(eleicao)

# correlação
cor(eleicao$DESPESAS, eleicao$SITUACAO)

plot(eleicao$DESPESAS, eleicao$SITUACAO)


modelo = glm(SITUACAO ~ DESPESAS, data = eleicao, family = 'binomial')

modelo


# pch é o estilo de icone o 20 é uma bola vermelha
plot(eleicao$DESPESAS, eleicao$SITUACAO, col = 'red', pch = 20)

# pch é o estilo de icone o 4 é um X
points(eleicao$DESPESAS, modelo$fitted.values, pch = 4)

# carregamento de arquivos novos candidatos.
peleicao = read.csv(file.choose(), sep = ';', header = TRUE)


fix(peleicao)

# criando uma nova coluna, essa tabela não tem uma coluna situação
peleicao$SITUACAO = predict(modelo, newdata = peleicao, type = 'response')

fix(peleicao)

# criando uma condição, portanto crie e adicine na coluna result if situaçao > 85
peleicao$SITUACAO = (peleicao$RESULT * 100 > 85)

# se situação == TRUE, 1 se não 0
peleicao$SITUACAO = ifelse(peleicao$SITUACAO == TRUE, 1, 0)

fix(peleicao)






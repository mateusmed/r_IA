# pacotte - arules

transacoes = read.transactions(file.choose(), sep = ',', format = 'basket')

transacoes

inspect(transacoes)

regras = eclat(transacoes,
               parameter = list(sup = 0.1, maxlen = 15))
regras
inspect(regras)

rules = ruleInduction(regras, transacoes, confidence = 0.5)
rules

inspect(rules)



#carregando arquivo de texto

ex1 = read.table('teste.txt')

#separador é um espaço
print(ex1)

# ao importar os dados ele já entende que é um dataFrame
class(ex1)

#head indica que a primeira linha é o cabeçalho
ex2 = read.table('teste2.txt', head = T)

print(ex2)

# ao importar os dados ele já entende que é um dataFrame
class(ex2)

#carregando arquivo, tem cabeçalho, que o separador é ';' 
#e que o marcador decimal é o  ','
ex3 = read.table('teste3.csv', head = T, sep = ';', dec = ',')

print(ex3)

dimnames(ex3)

class(ex3$salario)

View(ex3)



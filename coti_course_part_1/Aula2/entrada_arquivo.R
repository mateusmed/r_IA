#carregando arquivo de texto

ex1 = read.table('teste.txt')

#separador � um espa�o
print(ex1)

# ao importar os dados ele j� entende que � um dataFrame
class(ex1)

#head indica que a primeira linha � o cabe�alho
ex2 = read.table('teste2.txt', head = T)

print(ex2)

# ao importar os dados ele j� entende que � um dataFrame
class(ex2)

#carregando arquivo, tem cabe�alho, que o separador � ';' 
#e que o marcador decimal � o  ','
ex3 = read.table('teste3.csv', head = T, sep = ';', dec = ',')

print(ex3)

dimnames(ex3)

class(ex3$salario)

View(ex3)



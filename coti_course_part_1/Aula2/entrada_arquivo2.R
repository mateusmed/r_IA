#entrada_arquivo2

data('mtcars')


head(mtcars)

# 32 linhas 11 colunas
dim(mtcars)

#editor de dados;
fix(mtcars)


#install.packages('gdata', dependencies = T)
#install.packages('gtools', dependencies = T)

library('gdata')

#pegando o arquivo como referencia;
arquivo = file.path('teste3.xlsx')
arquivo

sheetCount(arquivo)

sheetNames(arquivo)

# convertendo xlsx para csv por isso usamos o compilador do perl <- atenção aqui
clientes = read.xls('teste4.xlsx', verbose = T, perl = 'perl', sheet = 1)
produtos = read.xls('teste4.xlsx', verbose = T, perl = 'perl', sheet = 'produtos')
enderecos = read.xls('teste4.xlsx', verbose = T, perl = 'perl', sheet = 3)

clientes
produtos
enderecos




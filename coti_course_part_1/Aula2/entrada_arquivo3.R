
# instalando o pacote -> R. para acessar o postgres
#install.packages('RPostgreSQL', dependencies = TRUE)

library('RPostgreSQL')

# conectando do banco de dados.
con = dbConnect(PostgreSQL(), 
                user = 'postgres',  
                password = 'coti',  
                dbname = 'aular')

#executando consulta;
rs = dbSendQuery(con, 'select * from produto order by nome')

#limpando o resultset se necessáro;
dbClearResult(dbListResults(con)[[1]])

# fetch =  dos dados do cursor
# -1 ele vai varrer até tentar encontrar o -1
# -1 não existe logo ele vai percorrer todos;
# ao dar o fetch ele já limpa o resultSet, já pode fazer outra consulta;
df =  fetch(rs, n = -1)

df

# dimensão, 8 produtos com 4 colunas
dim(df)

head(df)
tail(df)

#retorne todas as tabelas dentro do banco de dados.
dbListTables(con)

produtos = dbGetQuery(con, statement = 'select * from produto order by nome')

produtos







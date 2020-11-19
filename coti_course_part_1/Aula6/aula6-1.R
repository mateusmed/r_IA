
# mineração de dados
# estruturados -> xml, json , pdf
# não estruturados -> texto

# nuvem de palavras

#instalar pacote tm
#install.packages('tm', dependencies = TRUE)

library(tm)

# fonte de textos disponiveis no pacote tm
getSources()

# formatos - tipos de dados disponíveis por leitura
getReaders()

# criação de vcorpus -> memória
corpus = VCorpus(DirSource("c://Arquivos", encoding = 'UTF-8'),
                           readerControl = list(reader = readPlain, language = 'eng'))

corpus

#resumo corpus
inspect(corpus)

# 100 primeiros
inspect(corpus[1:100])

#ele não pega os arquivos na ordem que queremos, para inspecionar o arquivo use meta
as.character(corpus[2])
as.character(corpus[1557])

#metadados inpecionando os arquivos
meta(corpus[[1]])
meta(corpus[[2]])

#segundo arquivo na primeira linha
as.character(corpus[[2]])[1]

#Geração da nuvem de palavras
# stopwords -> palavras sem valor semantico
stopwords('portuguese')

# removendo as stop words do conjunto dedos
corpus = tm_map(corpus, removeWords, stopwords('english'))

#remover espaços em branco
corpus = tm_map(corpus, stripWhitespace)

#Remover pontuação
corpus = tm_map(corpus, removePunctuation)

corpus = tm_map(corpus, removeNumbers)


as.character(corpus[[2]])

#install.packages('wordcloud', dependencies = TRUE)
library(wordcloud)

# CRIADA NUVEM DE PALAVRAS
wordcloud(corpus, 
          max.words = 100,         # mostre apenas 100 palavras
          random.order = TRUE,     # random
          colors = rainbow(8),     # pinte com 8 cores
          rot.per = 0.5,           # rotacione 0.5
          use.r.layout = TRUE)


# matriz de frequencia
freq = TermDocumentMatrix(corpus)

# transformar em objeto de matriz do R
matriz = as.matrix(freq)

# ordenando o somatorio da matriz
matriz = sort(rowSums(matriz), decreasing = TRUE)

dt_freq = data.frame(word = names(matriz), freq = matriz)

View(dt_freq)

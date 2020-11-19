# Analise de variancia;
# carregar os dados

tratamento = read.csv(file.choose(), sep = ';', header = TRUE)

dim(tratamento)

View(tratamento)

# se as médias forem muito distantes a variação é nula
# pois eles não tem nada em comum ou proximo o suficiente para
# calcular a variação entre o "comum"

# criação de bloxplot para 3 tipos de remedios
boxplot(tratamento$Horas ~ tratamento$Remedio)

an = aov(Horas ~ Remedio, data = tratamento)

summary(an)

# aplicar o teste de tukey
tukey = TukeyHSD(an)
tukey

an = aov(Horas ~ Remedio * Sexo, data = tratamento)

summary(an)

tukey = TukeyHSD(an)
tukey






#Arrays

#Array com 3 dimensões e 24 elementos;
ar1 = array(1:24, dim = c(3, 4, 2))

ar1


#ar1[<linha>,<coluna>,<dimensão>]
ar1[,,]

ar1[,2:3,]

#somatorio dos elementos da primeira dimensão
sum(ar1[, , 1])

#somatorio da primeira linha da primeira dimensão
sum(ar1[1, , 1])

#HELP
help(array)


data("Titanic")
Titanic

#dimensões
dim(Titanic)

#verificar as dimensões possiveis no data
dimnames(Titanic)

sum(Titanic)

#Classe -> 1 dimensão
#somatorio dos passageiros da classe crew

#primeiro paramertro numero de linhas (1st, 2nd, 3rd, crew(tripulação))
#segundo parametro $Sex "Male"   "Female"
#terceiro parametro $Age "Child" "Adult"
#quarto parametro $Survived "No"  "Yes"
sum(Titanic[4, , ,])

sum(Titanic[4, , ,]) / sum(Titanic)

#quantos sobreviveram
sum(Titanic[ , , ,2])

#porcentagem de sobreviventes em relação ao total
sum(Titanic[ , , ,2]) / sum(Titanic)


#Classe -> somatorio
apply(Titanic, 1, sum)

# sexo, somatorio pelo sexo - lembra, apply é mais inteligente.
# pode colocar a aritimética que vc quiser;
apply(Titanic, 2, sum)
margin.table(Titanic, margin = 2)

#idade
apply(Titanic, 3, sum)

# [1] delimitano a coluna, idade sobreviventes 
#(somatorio da idade das crianças que sobreviveram)
apply(Titanic[, , , 2], 3, sum)[1]

apply(Titanic[, , , 2], c(2:3), sum)[, "Child"]











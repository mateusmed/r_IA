#Arrays

#Array com 3 dimens�es e 24 elementos;
ar1 = array(1:24, dim = c(3, 4, 2))

ar1


#ar1[<linha>,<coluna>,<dimens�o>]
ar1[,,]

ar1[,2:3,]

#somatorio dos elementos da primeira dimens�o
sum(ar1[, , 1])

#somatorio da primeira linha da primeira dimens�o
sum(ar1[1, , 1])

#HELP
help(array)


data("Titanic")
Titanic

#dimens�es
dim(Titanic)

#verificar as dimens�es possiveis no data
dimnames(Titanic)

sum(Titanic)

#Classe -> 1 dimens�o
#somatorio dos passageiros da classe crew

#primeiro paramertro numero de linhas (1st, 2nd, 3rd, crew(tripula��o))
#segundo parametro $Sex "Male"   "Female"
#terceiro parametro $Age "Child" "Adult"
#quarto parametro $Survived "No"  "Yes"
sum(Titanic[4, , ,])

sum(Titanic[4, , ,]) / sum(Titanic)

#quantos sobreviveram
sum(Titanic[ , , ,2])

#porcentagem de sobreviventes em rela��o ao total
sum(Titanic[ , , ,2]) / sum(Titanic)


#Classe -> somatorio
apply(Titanic, 1, sum)

# sexo, somatorio pelo sexo - lembra, apply � mais inteligente.
# pode colocar a aritim�tica que vc quiser;
apply(Titanic, 2, sum)
margin.table(Titanic, margin = 2)

#idade
apply(Titanic, 3, sum)

# [1] delimitano a coluna, idade sobreviventes 
#(somatorio da idade das crian�as que sobreviveram)
apply(Titanic[, , , 2], 3, sum)[1]

apply(Titanic[, , , 2], c(2:3), sum)[, "Child"]











# Regressão multipla
# conjunto de dados do R

data("mtcars")

mtcars??
help(mtcars)

dim(mtcars)

head(mtcars)

# regressão linear simples
# mpg milhas por galão pela distancia
# o modelo é mtcars
modelo = lm(mpg ~ disp, data = mtcars)

# coeficiente de determinação 
summary(modelo)
summary(modelo)$r.squared

# previsão
# qual a previsão de milhas por galão quando disp = 200 (deslocamento)
predict(modelo, data.frame(disp = 200))
# 21.35683
# então, para rodarmos 200 de deslocamento
# gastariamos 21.35683 galões


# regressão linear multipla com esses dados
#[, 1]	 mpg	 Miles/(US) gallon            -- milhas por galão
#[, 2]	 cyl	 Number of cylinders          -- numero de cilindros
#[, 3]	 disp	 Displacement (cu.in.)        -- deslocamento
#[, 4]	 hp	 Gross horsepower               -- hp potencia

#correlação
cor(mtcars[1:4])

modelo = lm(mpg ~ disp + hp + cyl, data=mtcars)

#Coefficients:
#  (Intercept)         disp           hp          cyl  
#   34.18492     -0.01884     -0.01468     -1.22742
modelo

summary(modelo)$r.squared
summary(modelo)$adj.r.squared

# milhas por galão:
# 24.03969
predict(modelo, data.frame(disp = 200, hp = 100, cyl = 4))








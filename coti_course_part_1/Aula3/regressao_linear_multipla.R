# Regress�o multipla
# conjunto de dados do R

data("mtcars")

mtcars??
help(mtcars)

dim(mtcars)

head(mtcars)

# regress�o linear simples
# mpg milhas por gal�o pela distancia
# o modelo � mtcars
modelo = lm(mpg ~ disp, data = mtcars)

# coeficiente de determina��o 
summary(modelo)
summary(modelo)$r.squared

# previs�o
# qual a previs�o de milhas por gal�o quando disp = 200 (deslocamento)
predict(modelo, data.frame(disp = 200))
# 21.35683
# ent�o, para rodarmos 200 de deslocamento
# gastariamos 21.35683 gal�es


# regress�o linear multipla com esses dados
#[, 1]	 mpg	 Miles/(US) gallon            -- milhas por gal�o
#[, 2]	 cyl	 Number of cylinders          -- numero de cilindros
#[, 3]	 disp	 Displacement (cu.in.)        -- deslocamento
#[, 4]	 hp	 Gross horsepower               -- hp potencia

#correla��o
cor(mtcars[1:4])

modelo = lm(mpg ~ disp + hp + cyl, data=mtcars)

#Coefficients:
#  (Intercept)         disp           hp          cyl  
#   34.18492     -0.01884     -0.01468     -1.22742
modelo

summary(modelo)$r.squared
summary(modelo)$adj.r.squared

# milhas por gal�o:
# 24.03969
predict(modelo, data.frame(disp = 200, hp = 100, cyl = 4))








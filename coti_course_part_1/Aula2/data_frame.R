
vetor = c(51, 54, 61, 67, 68, 75, 77, 75, 80, 82)

d1 = data.frame(x = 1:10, y = vetor)
d1

names(d1)

class(d1)

d1$x

d1$y

plot(d1)
plot(d1$x, d1$y)



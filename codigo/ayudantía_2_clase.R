pesos <- c(169.11, 158.20, 162.83, 172.93, 169.94, 147.18, 162.60,
           153.79, 154.17, 158.28, 156.15, 166.63, 161.09, 155.97,
           158.55, 157.67, 166.95, 153.36, 157.50, 148.17)

mean(pesos)
var(pesos)
sd(pesos)

sum(pesos)
sqrt(pesos)
pesos**2

?t.test

test <- t.test(pesos, y = NULL, alternative = "greater", mu = 150, paired = FALSE,
               var.equal = TRUE, conf.level = 0.95)
test


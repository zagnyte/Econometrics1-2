#Simona Gritytė, Agnė Zavackaitė, Orinta Jautakaitė, Sandra Kozlovskaja
S <- replicate(10^5, sum(sample(1:6, 3, replace = TRUE)))

St <- rolldie(3, nsides = 6, makespace = TRUE)
St <- addrv(St, U = X1 + X2 + X3)
marginal(St, vars="U")

plot(table(S)/10^5)
lines(marginal(St, vars="U"), col=2)



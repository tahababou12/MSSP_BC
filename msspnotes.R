# binom.test(x, n, p = 0.5, alternative = c("two.sided", "less", "greater"), conf.level = 0.95)

# dbinom(x, size, prob, log = FALSE)

x_pm <- dbinom(x= 0:5, size = 5, prob = 0.2)
x_cdf <- pbinom(q = 0:5, size = 5, prob = 0.2)

x_q <- qbinom(p = 0:5, size = 5, prob = 0.2)

plot(x_cdf)
plot(x_q)
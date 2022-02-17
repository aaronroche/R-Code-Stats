
# Title: Lab 4 Code
# Author: Aaron Roche

# Preliminaries
library(mosaic)
library(tidyverse)

# Problem 1
# a)
dbinom(0, 5, 0.05)
dbinom(1, 5, 0.05)
dbinom(2, 5, 0.05)
dbinom(3, 5, 0.05)
dbinom(4, 5, 0.05)
dbinom(5, 5, 0.05)

# b)
pbinom(0:2, 5, 0.05)
sum(dbinom(0:2, 5, 0.05))

# c)
# Formula for population mean of binomial distribution: μ = n * p
n <- 5
p <- 0.05

n * p

#d)
randBinom <- rbinom(10000, 5, 0.05)
tally(~randBinom,format="proportion")
mean(randBinom)


# Problem 2
# a)
pnorm(-5, mean = -4, sd = 0.5)

# b)
pnorm(-4.5, mean = -4, sd = 0.5) - pnorm(-5, mean = -4, sd = 0.5)

# c)
qnorm(0.2, mean = -4, sd = 0.5)

# d)
punif(8, min = 5, max = 10)

# e)
punif(8, min = 5, max = 10) - punif(7, min = 5, max = 10)

# f)
randUnif <- runif(100,5,10)
gf_qq(~randUnif)%>%gf_qqline()


# Problem 3
# a)
# lambda = 5
draws <- rpois(10000, lambda = 5)
gf_histogram(~draws,title=expression(paste(lambda,"= 5")))
gf_qq(~draws,title=expression(paste(lambda,"= 5")))%>%gf_qqline()

# lambda = 50
draws <- rpois(10000, lambda = 50)
gf_histogram(~draws,title=expression(paste(lambda,"= 50")))
gf_qq(~draws,title=expression(paste(lambda,"= 50")))%>%gf_qqline()

# lambda = 500
draws <- rpois(10000, lambda = 500)
gf_histogram(~draws,title=expression(paste(lambda,"= 500")))
gf_qq(~draws,title=expression(paste(lambda,"= 500")))%>%gf_qqline()

# b)
# n = 5
draws <- rbinom(10000,size=5,prob=0.5)
gf_histogram(~draws,title="n = 5")
gf_qq(~draws,title="n = 5")%>%gf_qqline()

# n = 50
draws <- rbinom(10000,size=50,prob=0.5)
gf_histogram(~draws,title="n = 50")
gf_qq(~draws,title="n = 50")%>%gf_qqline()

# n = 500
draws <- rbinom(10000,size=500,prob=0.5)
gf_histogram(~draws,title="n = 500")
gf_qq(~draws,title="n = 500")%>%gf_qqline()


draws <- rbinom(10000,size=9,prob=0.5)
gf_qq(~draws,title="n = 9")%>%gf_qqline()














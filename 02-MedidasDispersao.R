# Estat�stica B�sica

# Parte 2 - Medidas de Dispers�o

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador

setwd("C:/Users/cleison.lima/OneDrive/PowerBI/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

# Vari�ncia
var(vendas$Valor)

# Desvio Padr�o
sd(vendas$Valor)
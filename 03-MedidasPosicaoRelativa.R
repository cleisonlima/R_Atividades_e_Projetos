# Estatística Básica

# Parte 3 - Medidas de Posição Relativa

# Cuidado: A Linguagem R é case sensitive

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador

setwd("C:/Users/cleison.lima/OneDrive/PowerBI/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo dos dados
head(vendas)
tail(vendas)
summary(vendas)
View(vendas)
View(vendas)
View(vendas)

# Medidas de Tendência Central
summary(vendas$Valor)
summary(vendas[c('Valor', 'Custo')])

# Explorando variáveis numéricas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)











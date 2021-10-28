# Instalação dos pacotes
install.packages("hrbrthemes")

# Execução dos pacotes
library(hrbrthemes)
library(tidyverse)
library(ggridges)
library(ggthemes)
library(cowplot)
library(viridis)
library(GGally)
library(dplyr)
library(ggplot2)

# Importação dos dados
dados <- read.csv("pacientes.csv", sep = ";") 

# Visualização dos dados
View(dados)

# Verificando os tipos de dados
str(dados)

# Verificando os tipos de dados para numéricos
idade = as.numeric(dados$Idade.do.Segurado )
valor = as.numeric(dados$Valor.Total.Liberado)

#Verificando os tipos de dados após transformação
str(idade)
str(valor)

valor

any(is.na(valor)) # verifica sem tem qualquer valor nulos

is.na(valor) # mostra todos os valores nulos

valor2 = valor[is.na(valor)] <- mean(valor, na.rm = TRUE) # Substitui os valores nulos pela 
média

any(is.na(valor)) # verifica sem tem qualquer valor nulos

View(valor) # Visualizar dataframe

# Verificando o tipo de dados
str(valor)

mean(idade) # média
median(idade) # mediana
range(idade) # imites inferiores e superiores

# Primeiro método de visualização estatística dos dados
Q1 <- quantile(idade, probs = 0.25) # 1º quartil ( = percentil 25%)
Q2 <- quantile(idade, probs = 0.50) # 2º quartil ( = percentil 50% = mediana)
Q3 <- quantile(idade, probs = 0.75) # 3º quartil ( = percentil 75%)

Q1
Q2
Q3

# Informações estatísticas das variáveis selecionadas
summary(idade)
summary(valor)

# Edição da visualização
tema = theme(plot.background=element_rect(fill="#E0FFFF"),
             plot.title = element_text(size=25, hjust=.5, vjust=1),
             axis.title.x = element_text(size=22),
             axis.title.y = element_text(size=22, vjust=2),
             axis.text.x = element_text(size=20),
             axis.text.y = element_text(size=20, hjust=2))

# Ajustes finais de visualização 

options(repr.plot.width=14, repr.plot.height=12)

hist1<-ggplot(idade = idade, mapping = aes(x = idade)) +
  geom_density(fill = "green", color = "black", size = 1.6, alpha = .7) +
  theme_economist() +
  xlab("Idade dos Assegurados") +
  ggtitle("Assegurados Histograma") +
  tema

# Criação do boxplot
box1 <- ggplot(idade = idade, mapping = aes(x = idade)) +
  geom_boxplot(fill = "green", color = "black", size = 1.2, alpha = .7) +
  stat_boxplot(geom="errorbar") +
  theme_economist() +
  xlab("Idade dos Assegurados") +
  ggtitle("Assegurados Boxplot") +
  tema

# Gráficos
plot_grid(hist1, box1, nrow=1, ncol=2)

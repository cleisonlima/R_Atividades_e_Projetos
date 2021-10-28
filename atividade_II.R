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
dados <- read.csv("idades.csv", sep = ";")

# Visualização dos dados
View(dados)

# Verificando os tipos de dados
str(dados)

# Transformação dos dados para numéricos
idades = as.numeric(dados$idades)

str(idades)

any(is.na(idades)) # verifica sem tem qualquer valor nulos

summary(idades) # Verificação estatística dos dados

# Tema da visualização
tema = theme(plot.background=element_rect(fill="#E0FFFF"),
             plot.title = element_text(size=25, hjust=.5, vjust=1),
             axis.title.x = element_text(size=22),
             axis.title.y = element_text(size=22, vjust=2),
             axis.text.x = element_text(size=20),
             axis.text.y = element_text(size=20, hjust=2))

# Criação do boxplot
box2 <- ggplot(idade = idades, mapping = aes(x = idades)) +
  geom_boxplot(fill = "#8B008B", color = "black", size = 1.2, alpha = .7) +
  stat_boxplot(geom="errorbar") +
  theme_economist() +
  xlab("Idades") +
  ggtitle("Análise exploratória de Idades") +
  tema

# Gráfico
plot_grid(box2)

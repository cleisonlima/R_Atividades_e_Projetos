# 2ª Atividade

# Você trabalha numa empresa de manipulação de dados e como analista de dados está acostumado a 
# receber os mais diversos tipos de pedidos, desde procedures em SQL, rotinas de ETL e, também, 
# como nesse caso, conjuntos de dados para gerar gráficos e entregar à área de marketing que está 
# desenvolvendo um importante projeto, comparando faixas de markup entre produtos de concorrentes. 
# Então, eles lhe passaram dois conjuntos de dados a saber:

x = c(5,5,5,13,7,11,11,9,8,9)
y = c(11,8,4,5,9,5,10,5,4,10)
  
  
#  Ambos possuem 10 elementos cada, representados por 2 vetores.
#  Pede-se que você prepare e apresente a visualização:
    
# 1. Utilize a linguagem R para plotar X e Y em gráficos diferentes utilizando BOXPLOT.
boxplot(x)

boxplot(x, main = "Valores do X")


boxplot(y)

boxplot(y, main = "Valores do Y")

# 2. Usando R, plote a comparação de X e Y no mesmo gráfico utilizando BOXPLOT.
boxplot(x,y, main = "Comparação dos valores X e Y")



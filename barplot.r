# 1ª Atividade

# Você foi contratado pela empresa XPTO para a função de analista de dados. 
# Como parte de seu trabalho, foi lhe confiada uma extração de dados contendo os seguintes valores: 
# (25, 45, 28, 79, 74, 61, 12, 68, 93, 39, 100), sendo que cada valor na sua atual sequência atende pelos títulos: 
# (alface, cenoura, pepino, chuchu, pimenta, couve, rúcula, cebola, alho, pimentão, alcachofra). 
# Pediram para que você realize o seguinte, utilizando a linguagem R, e apresentar os resultados.


# 1. Crie um gráfico de barras apresentando o resultado de cada item.
# 2. Liste os componentes da matriz dos dados.
valores <- c(25,45,28,79,74,61,12,68,93,39,100)
titulos <- c("alface", "cenoura", "pepino", "chuchu", "pimenta", "couve", "rúcula", "cebola", "alho", "pimentão", "alcachofra")
barplot(height = valores, names.arg = titulos)

cbind(valores,titulos)
rbind(valores,titulos)

# 3. Liste o resultado da soma dessa matriz.
sum(valores)

# 4. Liste a média aritmética dessa matriz.
mean(valores)

# 5. Liste o produto dos elementos dessa matriz.
prod(valores)





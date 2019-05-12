####### AULA 01 ####### 

# Operacoes Aritmeticas

# Soma: +
3+5

# Subtração: -
3-5

# Multiplicação: *
3*5

# Divisão: /
3/5

# Potenciação: ^ ou **
2 ^ 3
3 ** 2

# Raiz quadrada: sqrt()
sqrt(4)

# Raiz sem ser quadrada, faz a exponenciação do inverso do número
# Raiz cubica de 8
8^(1/3)

#Resto da divisão: %%
9 %% 2

#Quociente da divisão: %/%
9 %/% 2

####### AULA 02 ####### 

x <- 0
x

#Criar um objeto e nao precisar mandar imprimir o valor depois e ainda assim ver seu resultado na console
#colocando a atribuição entre parenteses
(y <- (3*x-1)^2)

#Criar vetor com conteudo de 1 a 6
(vetor1 <- 1:6)

#criar vetor manualmente
(vetor2 <- c(2,4,6,7,1,5,3))

#Criar vetor usando array
(vetor3 <- array(1:6))

#Acessar posição do array
vetor3[3]
vetor3[3:6]
vetor3[7] #posicao que nao existe

#Criar matriz
(M <- matrix(1:6, nrow = 2, ncol = 3))

#Acessando posição da Matriz
M[4] #distribui por coluna
M[1,2] #acessando elemento por linha e coluna
M[2,] #identificar segunda linha
M[,3] #identificar terceira coluna

#Criando dataframe
(tabela1 <- data.frame(Nome = c("Andre", "Joao"), Idade = c(25,45)))

#Acessando valores do dataframe
tabela1$Nome
tabela1[1]
tabela1$Idade
tabela1[2]

#Incluindo coluna no dataframe
tabela1$Salario <- c(1200) #se colocar um valor só, então va repetir parada tds as linhas
tabela1

#Criar tabela nova adicionando nova coluna com base em tabela existente
(tabela <- cbind(tabela1, data.frame(Casado = c(TRUE, FALSE))))

#Criar tabela nova adicionando nova linha com base em tabela existente
(tabela <- rbind(tabela1, data.frame(Nome = "Joana", Idade = 25, Salario = 4200)))

#ver objetos criados e armazenados na memoria
ls()

#Remover objeto da memoria: rm() ou remove()
rm(vetor1)
remove(vetor2)
ls()

####### AULA 03 #######



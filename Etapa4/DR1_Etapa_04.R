# Disciplina: Big Data Analytics
# 
# Construir an�lises de dados simples utilizando R


# Criando tr�s vetores
x1 <- 10
x2 = 20
assign("x3", 30)
#------------------------
# Cria novo vetor com x1, 2, 3 e x2.
x3 <- c(x1, 2, 3, x2)
x3
#------------------------
# Cria vetor com "a", "b" e "c"
x4 <- c("a", "b", "c")
x4
#------------------------
# Numeric
num <- c(522.34, 23, 456)
# Integer (aten��o ao 'L')
int <- c(5L, 73L)
# Complex (aten��o ao 'i')
compl <- c(10i, 3 + 5i)
# Caracter (aten��o �s aspas)
txt <- c("aspas duplas", 'aspas simples', "aspas 'dentro' do texto")
# Logic (mai�sculas!)
logi <- c(TRUE, FALSE, TRUE)
#------------------------
class(num)
class(int)
class(compl)
class(txt)
class(logi)
#------------------------
is.numeric(num)
is.character(num)

is.character(txt)
is.logical(txt)
#------------------------
str(x3)
str(num)
str(int)
str(compl)
str(txt)
str(logi)
#------------------------
num
names(num) <- c("num1","num2","num3")
num
names(num)
#------------------------
num[1] # Primeiro elemento
num[c(1,2)] # Elementos 1 e 2
num[c(1,3)] # Elementos 1 e 3
num[c(3,1,2)] # Alterando a ordem
#------------------------
num["num1"]
num["num2"]
num[c("num1", "num3")]
#------------------------
# Seleciona apenas o 1o elemento
num[c(TRUE, FALSE, FALSE)]
# Seleciona apenas o 3o elemento
num[c(FALSE, FALSE, TRUE)]
# Seleciona o 1o e o 3o elemento
num[c(TRUE, FALSE, TRUE)]
#------------------------
num

# Alterando o 1o elemento 100
num[1] <- 100
num

# Alterando o 2o e 3o elementos
num[2:3] <- c(12.3, -10)
num
#------------------------
order(num) # �ndices p/ ordena��o crescente

num[order(num)] # Ordena o vetor num

sort(num)
#------------------------
# Criando uma sequ�ncia de 1 a 10
1:100

# Criando uma sequ�ncia de -1 a -10
# Aten��o: n�o � criada na ordem dos 
# inteiros!
-1:(-10)
#------------------------
seq(from = 1, to = 10, by = 3)

rep(1, times = 10)

rep(c(1,2), times = 5)
#------------------------
# Soma
1 + 20
# Soma vetorizada
c(1,2,3) + c(4,5,6)

# Subtra��o
200 - 2
# Subtra��o vetorizada
c(1,2,3) - c(4,5,6)

# Divis�o
200 / 15
# Divis�o
c(2,4,6) / c(1,2,3)

# Multiplica��o
2*10
# Multiplica��o vetorizada
c(10,9,8) * c(1,2,3)

# Exponencia��o
4^2
# Exponencia��o vetorizada
c(2,2,2) ^ c(1,2,3)

# Divis�o inteira
7 %/% 3
# Divis�o inteira vetorizada
c(7,7) %/% c(3,2)

# M�dulo (resto da divis�o)
7 %% 3
# M�dulo vetorizado
c(7,7) %% c(3,2)
#------------------------
# Opera��o
x <- c(1, 2, 3, 4)
x * 2

# Equivale �
x * c(2, 2, 2, 2)
#------------------------
# Opera��o
x <- c(1, 2, 3, 4)
x * c(2, 3)

# Equivale �
x * c(2, 3, 2, 3)
#------------------------
# Opera��o
x * c(2, 3, 1)

# Warning message:
# In x * c(2, 3, 1) : 
#   longer object length is not a multiple of shorter object length
#------------------------
x <- c(1,2,-3, 4, -20.3)

abs(x) # Valor absoluto

log(x) # Logaritmo natural
# Warning message:
#   In log(x) : NaNs produced

exp(x) # Exponencial

sqrt(x) #Raiz quadrada
# Warning message:
#   In log(x) : NaNs produced

factorial(1000) # Fatorial (5*4*3*2*1)
#------------------------
sin(pi) # Seno
cos(pi) # Cosseno
tan(pi) # Tangente, etc.
#------------------------
x <- c(1,2,-3, 4, -20.3)

mean(x) # M�dia

sum(x) # Somat�rio

prod(x) # Produt�rio

cumsum(x) # Somat�rio acumulado

cumprod(x) # Produt�rio acumulado

y <- 1:5

var(x) # Vari�ncia

sd(x) # Desvio-padr�o

median(x) # Mediana

cov(x, y) # Covari�ncia

cor(x, y) # Correla��o entre x e y

min(x) # M�nimo

max(x) # M�ximo

cummin(x) # M�nimo "acumulado"

cummax(x) # M�ximo "acumulado"

diff(x) # Diferen�a
#------------------------
x <- 10
y <- 20
x == y

x <- c(10, 20, 30)
y <- c(10, 10, 30)
x == y

# Montando um vetor com elementos de x # que s�o iguais a y 
x[x == y]

# Coer��o! Converte x para texto e 
# compara textualmente.
x <- c(10, 20)
y <- c("10", "20")
x == y

# Cuidado com a coercao, pois podem ser
# gerados resultados inesperados:
20 > "100"
# Resultado correto pela ordem alfab�tica.
#------------------------
identical(x, y)

# Aten��o com os casos abaixo!
# O que est� acontecendo?
identical(sin(pi), 0)
identical(0.1, 0.3 - 0.2)
#------------------------
# Resultado falso, incorreto!
sin(pi) == 0

# Resultado verdadeiro, correto!
all.equal(sin(pi), 0)
#------------------------
abs(sin(pi) - 0) < 1e-12
#------------------------
x <- c(1,2,3,4,5)
y <- c("1","3","2","4","5");

# Armazena o resultado da compara��o em
# "resultado"
resultado <- (x >= y)
resultado

# Usa o vetor 'resultado' para fazer um 
# subconjunto x
x[resultado]
#------------------------
as.numeric(resultado)

sum(resultado)
#------------------------
c(TRUE, FALSE) & c(TRUE, TRUE)

c(TRUE, FALSE) | c(TRUE, TRUE)
#------------------------
# Define a semente da simula��o
set.seed(11)

# simula 1000 observa��es seguindo
# distribui��o normal(5, 2)
x <- rnorm(1000, 5, 2)

# Existe algum x maior que 10?
any(x > 10)

# Todos os x est�o entre -20 e 20?
all(x > -20 & x < 20)
#------------------------
which(c(TRUE, FALSE, TRUE))

# Quais as posi��es dos elementos de x
# maiores do que 10?
which(x > 10)
#------------------------
x <- 1:5
y <- c(1:3, 6:10)

# Conjunto dos elementos de x que 
# n�o est�o em y
setdiff(x, y)

# Conjunto dos elementos de x que
# est�o em y
intersect(x, y)

# Conjunto uni�o de x e y
union(x, y)

# Quais elementos de x est�o em y?
x %in% y
#------------------------
Data <- "11 de outubro de 2016"

Data <- as.Date(Data, format="%d de %B de %Y")
str(Data)
#------------------------
Data + 1

Data - 1

weekdays(Data)

Data > "2016-10-01"

months(Data + 31)

quarters(Data)

seq.Date(from = Data, by = 1, length.out = 10L)
#------------------------
Data <- "11 de outubro de 2014 �s 19h e 40m"
ct <- as.POSIXct(Data,format="%d de %B de %Y �s %Hh e %Mm")
ct

lt <- as.POSIXlt(Data, format="%d de %B de %Y �s %Hh e %Mm")
lt
#------------------------
ct + 3600 # Soma uma hora
ct

lt - 60 # Subtrai um minuto
ct

months(ct)

weekdays(lt)
#------------------------


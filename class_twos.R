#========================================#
# Tema de programación: Clase 2          #
# Fecha de actualización: 07/05/2023     #
#========================================#

# VECTORES
#----------

#Es una estructura de datos básica y fundamental
#Es una colección ordenada de elementos del mismo tipo: números, caracteres o valores lógicos

#Vector de longitud 1
x <- 2
print(x)

#Crear vectores de longitud de 2 o mayor que 2
c(4,2,8)

#Para asignar variable
u <- c(4,2,8)
c(4,2,8) -> v
assign("W", c(4,2,8))
p = c(4,2,8)

#El ";" especifica al R que son líneas de comando diferentes
print(u); print(v); print(W); print(p)

#Creación de vectores a partior de secuencias y otros patrones
v <- vector("integer", 0)
v

w <- vector("numeric", 3)
w

u <- vector("logical", 5)
u

#En un vector también se pueden incluir secuencias
1:3
v <- 40:13
v

class(v)

v <-seq(from = 5, to = 15, by = 2)
v

#Incluir repeticiones
v <- c(4, 8, -3)
w <- rep(v, times = 5)
print(w) # Se repite "v" 5 veces

#Unir vectores
u <- c(3,4,5)
v <- c(5,4,3)
w <- c(u,v)
w

#Acceder a elementos individuales d eun vector
v <- c(8,7,-3,2,182)
v[5]
print(v[1]); print(v[3])

#Manipulación de los elementos de un vector
v[4] + v[2]

#Modificar un elemento de "v"
v[1] <- v[2] - v[5]
v

#Agregar elementos a un vector
v[8] <- 213
v

#Nombrar elementos de un vector
alumnos <- c(17,18,19)
alumnos

names(alumnos) <- c("Alina", "Beymar", "Carlo")
alumnos

alumnos2 <- c(Alina = 17, Beymar = 18, Carlo = 19)
alumnos2 

alumnos["Alina"]
alumnos["Beymar"]
alumnos["Carlo"] <- 15
alumnos
alumnos[2]

#Operaciones de un vector
v <- 2+3
v

v <- c(2,3) - c(5,1)
v #La operación es de elemento a elemento

v <- c(2,3,4)^(3:1)
v

#Longitud de un vector
u <- 2:33
v <- c(4,5,6)
w <- c(u,v)
w

length(w)

#Operaciones lógicas de un vector
w <= 10

#Otras operaciones lógicas se pueden usar en R: "<", ">", ">=", "==", "!="

#Operaciones con vectores que no son de la misma longitud
v <- c(4:10)*c(1,2)
v

#Lo anterior es igual a:
v <- c(4:10)*c(1,2,1,2,1,2,1)
v

w <- c(100:1)*c(1,2)
w

#Multiplicaciones y exponenciales
v <- c(2,-3,4)
w <- 2*(v^2)
w

#Raíz cuadrada
v <- c(9,8,31)
sqrt(v)
lv <- log(v)
lv

#MATRICES
#? ??
#ES UN VECTOR CON UN NUEVO ATRIBUTO: DIMENSIÓN(dim)

m <- 11:30
m # es un vector de 20 números

#Convertirlo en una matrioz
dim(m) <- c(4,5)
m
class(m)

#Cambiar de dimensión
dim(m) <- c(5,4)
m

#Elemento por elemento
m[3,2] #Fila 3, columna 2
m[18] #Esto es en el caso de que solo se quiera usar un índice

#Toda una fila
m[3,]
#Toda una columna
m[,2]

#Otra manera de generar matriz
m <- matrix(11:30, nrow = 5, ncol = 4, byrow = TRUE) #La matriz se va a llenar por filas
m

m <- matrix(11:30, nrow = 5, ncol = 4, byrow = FALSE) #La matriz se va a llenar por columnas
m

#Asigar nombres a los elementos de la matriz
m
rownames(m) <- c("uno", "dos", "tres", "cuatro", "cinco")
colnames(m) <- c("UNO", "DOS", "TRES", "CUATRO")
m

#Consultar los nombres disponibles de una matriz
colnames(m)

#LLamar elementos
m[,"DOS"]

#Otra manera de generar matrices: rbind() y cbind()
m1 <- rbind(c(1.5, 3.2, -5.5), c(0,-1.1,60))
m1

m2 <- cbind(c(1.5,3.2,-5.5), c(0,-1.1,60))
m2

#Operaciones básicas con matrices
m <- matrix(1:15, nrow = 5, ncol = 3)
m
mm <- rbind(1:3, 3:1, c(1,1,1), c(2,2,2), c(3,3,3))
mm

m*mm #Es una multiplicación de elemento por elemento
# (!) No es una multiplicación matricial

#Para que R reconozca un multiplicación de matrices se debe usar los símbolos "%*%"

A <- matrix(1:6, 3, 2)
A # 3x2
B <- rbind(7:9, 10:12)
B # 2x3

A%*%B

C <- A%*%B
C # 3x3

#Transpuesta de una matriz
A
t(A)

#FACTORES Y VECTORES DE CARACTERES
#---------------------------------

#Caracteres
persona <- c("Hugo", "Paco", "Luis", "Petra", "María", "Fulano",
              "Suatano", "Perengano", "Metano", "Etano", "Propano")
mes_nacimiento <- c("Dic", "Feb", "Oct", "Mar", "Feb", "Nov", "Abr", "Dic", "Feb", "Oct", "Dic")

persona
mes_nacimiento

print(c(persona[7], mes_nacimiento[7]))
print(c(persona[3], mes_nacimiento[3]))

#La función paste()
paste(persona[7], "nació en el mes de", mes_nacimiento[7])

#Factores 
#Sirven para identificar variables categóricas (ordinales o nominales)

#Vamos a convertir un vector en un factor
Fmes_nacimiento <- as.factor(mes_nacimiento)
Fmes_nacimiento

#Tabla de frecuencia 
table(Fmes_nacimiento)

#Factores que establezacan el orden determinado de los niveles
meses <- c("Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic")
meses

FFmes_nacimiento <- factor(mes_nacimiento, levels = meses)
FFmes_nacimiento
table(FFmes_nacimiento)

#Acceder a los elementos de un factor
FFmes_nacimiento[10]
levels(FFmes_nacimiento)
levels(FFmes_nacimiento)[3]
FFmes_nacimiento[3]

#Modificar los niveles de un factor
levels(FFmes_nacimiento)[2] <- "febrero"
FFmes_nacimiento

#LISTAS
###############

familia <- list("María", "Juan", 10, c("Hugo", "Petra"), c(8,6))
familia

#Nombres a las listas
familia <- list(madre = "María", padre = "Juan", casados = 10, hijos = c("Hugo", "Petra"), edades = c(8,6))
familia

#Acceder a los elementos de una lista "[[]], $"
familia$madre
familia[["madre"]]
familia[["padre"]] <- "Juan Pedro"
familia$padre

mm <- "madre"
familia[[mm]]
familia[[paste("ma","dre",sep="")]]

paste("ma", "dre", sep="") #sep es el separador de elementos

#DATA.FRAME

#Tiene la forma de base de datos

A <- data.frame(1:5)
A

B <- data.frame(Edades = c(20,25,21,18,15,30))
B

#Dos o más variables
C <- data.frame(Peso = c(69,60,80,60), Edades = c(25,24,55,50))
C

rownames(C) <- c("William", "Wendy", "Rozana", "Pedro")
C

#Data frame almacenado en una lista
Lista <- list(Edades = C, Precios = data.frame(Precio = c(25,24,23)))
Lista

Lista$Edades
Lista$Precios

#La variable de un data frame de una lista
Lista$Edades$Peso

#¿Cuánto es la edad de William?
paste("La edad de William es", Lista$Edades["William", "Edades"])
#Cuánto es el peso de Wendy
paste("Wendy pesa", Lista$Edades["Wendy", "Peso"], " kilogramos")

#Las funciones sapply() lapply()
#-------------------------------

#uno: 5 valores aleatorios uniformes de 10.5 a 40.3
#dos: 5 valores aleatorios uniformes entre 0 y 1
#tres: 5 valores aleatorios uniformes de 155 a 890

misDatos <- data.frame(uno = runif(5, 10.5, 40.3), dos = runif(5), tres = runif(5,155,890))
misDatos

#Valor promedio de cada variable
lapply(misDatos, mean) #Los resultados se almacenan en listas

#Para el caso de matrices
mm <- rbind(5:9, runif(5,10,20), c(2,-2,1,6,-8))
mm

#Se llena por filas "rbind"
colSums(mm)
#Promedio por filas
rowMeans(mm)

#Desviación estándar para las filas: #1: filas
apply(mm, 1, sd)

#Desviación estándar para las filas: #2: columnas
apply(mm, 2, sd)

# ?
# ??

#DESCOMPOSICIÓN DE MATRICES EN R
#--------------------------------















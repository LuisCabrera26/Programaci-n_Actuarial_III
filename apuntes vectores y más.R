# Prueba de asignación de variables
 x <- 1
 # Impresión forzada
 print(x)
 # Impesión Indirecta
 x
 msg <- "Hola a todos"
 msg
 x <- # Un comentario sin sentido
# Se inicia una secuencia de datos y se imprime
   

#Con corchete, al inicio de cada fila se verá
   # la posición que corresponde al primer elemento 
   #de cada renglón impreso.
   
# El signo de : se utiliza para denotar series de números
   
#Clases atómicas en R
?class
 class(1) #numeric
 class(1L) #Integer
 class(1+1L) #numeric
 class(3+12i)
 (3+12i)*(3-12i)
 class((3+12i)*(3-12i))
 class(TRUE)
 class(TRUE*1)
 class(c(1,FALSE,3L,2+4i,"a"))
 #La clase dominante es la character
 a<-vector(1,FALSE,3L, 2+4i,"a")
 ?vector
 #Vectores vacios del tipo y tamaño que me interesa.
 a <- vector(mode = "numeric",length = 10)
 a
 Inf
 #La función c() tambien me permite crear vectores, 
 #pero lo hace a partir de los elementos del vector
 a <- c(1,5,3L,2+4i,T,FALSE)
 a
 b <- c(a, "cadena")
 b
 c <- c(1,5,3L,2+4i,T,FALSE,"cadena")
 
 x<- 0:1
 x
 ###
 
 ###
 
 #Listas de objetos
 x <- c(F,3L,9405, 2+3i, "a")
 x
 x <- list(F,3L,9405, 2+3i, "a")
 x
 x <- list(F,3L,94.5,08, 2+3i,"a")
 x
 # Cada lemento de la lista puede ser de diferente clase.
 
 #Matrices
 x <- matrix(nrow=2,ncol=3)
 ?matrix
 x
 dim(x)
 attributes(x)
 x <- matrix(1:6,2,3)
 x
 x <- matrix(1:6,2,3,TRUE)
 x
 x <- matrix(data=1:10,2,5,TRUE)
 x
 x <- matrix(data=1:10,2,5)
 x
 #Creación de una matris al forzar su dimensión.
 x <- 1:10
 x
 dim(x)
 dim(x) <- c(2,5)
 x
 # cbind y rbind
 x <- 1:5
 y<- 11:15
 z <- 21:25
 cbind(x,y,z)
 rbind(x,y,z)
 datos <- rbind(x,y,z,x,x,x,x)
 datos
 dim(datos)
 
 
 x <- 1:5
 a <- 1
 b <- 2
 c <- 3
 d <- 4
 e <- 5
 
 loco <- cbind(x,a,x,b,x,c,x,d,x,e)
 dim(loco)
 loco
 
 a <- c(11:14,"15")
 b <- c(21:24,"25")
 c <- c(31:34,"35")
 d <- c(41:44,"45")
 e <- c(51:54,"55")
 rbind(a,b,c,d,e)
 ?Machinelearning
 data <- read.csv(file="table.csv")
 head(data)
 #probaremos la función dput y dget
 y <- data.frame(a=1,b="a")
 y
 dput(y)
 dput(y,file="y.R")
 #con la siguiente instrucción eliminamos de la memoria a y
 rm(y)
 #si referente en la memoria, recuperamos el objeto y a partir del archivo que guardemos"
 #nueva.y <- dget(file="y.R")
 nueva.y
 
 #probemos ahora dump
 x <- "Programación Actuarial III"
 y <- data.frame(a=1,b="a")
 #dump me permite realizarlo mismo que dget pero con objetos multiples
 dump(c("x","y"),file="data.R")
 rm(x,y)
source("data.R") 
 
 # conexiones
con <- url("http://www.fcfm.buap.mx/","r")
readLines(con,10)
 
 #Muestra el contenido 1000
data <- read.csv(file="table.csv")
tail(head(data,1000),1)

 #Creamos un vector
x <- c("a","b","c","d","e")
x
x[1]
x[2]
x[1:4]
x[x>="c"]
data[1000,]
u <- x == "c"
u
x[u]
w <- x== "d"
w
x[w]

#extracción de una lista con[]
x <- list(foo=1:4,bar=0.6)
x
x[1]
class(x[1])
x[[1]]
class(x[[1]])
x$foo
#jala con el nombre aun que no se sepa el número
x["bar"]
x[["bar"]]
x <- list(foo=1:4,bar=0.6,baz ="Hola")
nombre <- "bar"
x[nombre]
x[[nombre]]
x$nombre
x$bar

#
x <- list(a=list(10,12,14), b=list(3.14,2.81))
#de la primer lista enseño el elemento 3
x[[c(1,3)]]

x[c(1,3)]

x <- list(a=c(1,2,3),b="a",d=3+4i)
x
x[[2]]
rm(x)

#Matriz

  x <- matrix(1:9)
  x
  x <- matrix(1:9,3,3)
  x
  x[2,3]
  # drop=FALSE sirve para mantener el elemento como matriz reducida
  x[1,2,drop=FALSE]
  
  x<- list(aadvark=1:5)
  x
  x$a
  x[["a",exact=FALSE]]
  
  airquality
  dput(airquality)
  dput(airquality,file="sript.R")  
  
  
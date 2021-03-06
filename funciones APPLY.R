lapply


x <- list(a=1:100,b=c(1,3,5,7), c=50:1)
x

lapply(datos,complete.cases)

lapply(x,mean)
y <- sapply(x,mean)
y
hist(y)

set.seed(1)
lapply(1:4, runif)

#Teorema de limite central

a <- runif(10,50,100);hist(a)
a <- runif(100,50,100);hist(a)
a <- runif(1000,50,100);hist(a)
a <- runif(10000,50,100);hist(a)
a <- runif(100000,50,100);hist(a)
a <- runif(1000000,50,100);hist(a)

#Distribuci�n normal
hist(rnorm(10,100,10))
hist(rnorm(100,100,10))
hist(rnorm(1000,100,10))
hist(rnorm(10000,100,10))
hist(rnorm(100000,100,10))
hist(rnorm(1000000,100,10))

hist(rexp(1000000,1))

#cu�nto tiempo pasa antes de ver el quinto exito
hist(rgamma(1000000,5,1))


n <- 1000
sumas <- vector("numeric",n)
for (i in 1:n){
    sumas[i] <- sum(rexp(n),1)
}
hist(sumas)


x <- list(a=1:5,b=rnorm(10),c=rnorm(10,3),d=rnorm(10,5))
x
lapply(x,mean)


#distribuci�n normal con media 5 (rnorm(n,5))#


set.seed(1)
n <- 1000
x <- list(a=1:10,b=rnorm(n),c=rnorm(n,3),d=rnorm(n,5))
lapply(x,mean)
sapply(x,mean)


set.seed(1)
x<-matrix(rnorm(200),20,10)
apply(x,1,mean)
apply(x,2,mean)
x
apply(x,1,quantile,probs=c(0.25,0.75))


a<-array(rnorm(2*2*10),c(2,2,10))
a
apply(a,c(1,2),mean)
rowMeans(a,dims=2)
#en cada cuadradito promedio los 10
apply(a,c(1,3),mean)


#para muchas variables
str(mapply)
?rep

list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep,1:4,4:1)

rep(1:4,4:1)








w<- list(a=matrix(1:20,5,4),b=matrix(20:40,5,4),c=matrix(60:80,5,4))
w
dim(w)<-c(3,5,4)
apply(w,mean)




install.packages("rJava")
install.packages("xlsx")
install.packages("XML")
install.packages("jsonlite")
install.packages("data.table")

# 27/05/2016.

if(!file.exists("data")){dir.create("data")}

url <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(url,"./data/camaras.csv")
list.files("./data")
fechaDescarga <- date()
fechaDescarga

datoscamera<- read.table("./data/camaras.csv", sep= "," , header = T)
head(datoscamera)


if(!file.exists("data")){dir.create("data")}

url <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
download.file(url,destfile= "./data/camaras.xlsx")
list.files("./data")
fechaDescarga <- date()
fechaDescarga

datoscamera<- read.table("./data/camaras.xlsx", method= "curl")
head(datoscamera)



#02/06/2016.

library(data.table)
DF = data.frame(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DF,3)

DT = data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DT,3)

DT[2,]

# te muestra todos los valores que en la columna "y" tienen a
DT[DT$y == "a",]
DT[c(2,3)]
DT[,c(2,3)]

k = {print(10);5}
print(k)

DT[,list(mean(x),sum(z))]
DT[,table(y)]
DT[,w:=z^2]
DT
DT2 <- DT
DT[,y:=2]
DT

head(DT)
head(DT2)

DT[,m:={tmp<-(x+z); log2(tmp+5)}]
DT
DT[,a:=x>0]
DT

DT[,b:=mean(x+w),by=a]
DT


#elementos a, b y c. tomo tantas veces 1E5 = 100000 y anota el n�mero de cada una de las que repitieron.
DT <- data.table(x=sample(letters[1:3],1E5,TRUE))
DT[,.N,by=x]

DT <- data.table(x=rep(letters[1:3],each=100), y=rnorm(300))
setkey(DT,x)
DT['a']



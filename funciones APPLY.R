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

#Distribución normal
hist(rnorm(10,100,10))
hist(rnorm(100,100,10))
hist(rnorm(1000,100,10))
hist(rnorm(10000,100,10))
hist(rnorm(100000,100,10))
hist(rnorm(1000000,100,10))

hist(rexp(1000000,1))

#cuánto tiempo pasa antes de ver el quinto exito
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


#distribución normal con media 5 (rnorm(n,5))#


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








w<- list(a=matrix(1:20,5,4),b=matrix(20:40,5,4),c=matrix(60:80,5,4))
w
dim(w)<-c(3,5,4)
apply(w,mean)
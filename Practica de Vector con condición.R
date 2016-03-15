
z <- 5
k <- 1
while(z>=3 && z<=10){
    print(z)
    moneda <- runif(1,0,1)
    if(moneda<=0.5){
        z <- z+1
    } else {
        z <- z-1
    }
    k <- k + 1
    if(k>=100000) break
}
ll++++++++++++++++++ 

    
# Tarea.
    
z <- 5
k <- 1
v <- vector("numeric",0)
while(z>=3 && z<=10){
    length(v) <- length(v)+1
    v[k] <-(z)
    moneda <- rbinom(1,1,0.5)
    if(moneda==1){
        z <- z+1
        v[k] <- z
    } else {
        z <- z-1
        v[k] <- z
    }
    k <- k + 1
    if(k==100000) break
}
v
plot(v,type="h",lwd=4)

# con runif
z <- 5
k <- 1
v <- vector("numeric",0)
while(z>=3 && z<=10){
    length(v) <- length(v)+1
    v[k] <-(z)
    moneda <- runif(1,1,0.5)
    if(moneda==1){
        z <- z+1
        v[k] <- z
    } else {
        z <- z-1
        v[k] <- z
    }
    k <- k + 1
    if(k==100000) break
}
v
plot(v,type="h",lwd=4)


# Funciones

sum
plot
# Creación de funciones
Betillo <- function(x,y)
    x+y
Betillo(3,8)
Betillo(1:5,3)
Betillo(1:5,5:1)

mayor10 <- fuction(x){
    validos <- x>10
    x[validos] 
}

mayor <- function(x) {
    x[x>10]
}

mayor2 <- function(x,y){
    x[x>y]
}
mayor2(15,20)

#
airquality
airquality[,2,drop=FALSE]


mean(airquality[,2,drop=FALSE])


x <- airquality
x
promediosCols <- function(x){
    nc <- ncol(x)
    medias <- vector("numeric",nc)
    for(i in 1:nc){
        medias[i] <- mean(x[,i],na.rm=TRUE)
    }
    medias
}
# que pregunte dos variables, la segunda para pedir si se quieren los NA

promediosCols <- function(x, na.rm=TRUE){
    nc <- ncol(x)
    medias <- vector("numeric",nc)
    for(i in 1:nc){
        medias[i] <- mean(x[,i],na.rm=na.rm)
    }
    medias
}


#practica en clase


betillo <- function(inicial=100,final=1000){

z <- inicial
k <- 1
v <- vector("numeric",0)
#while(z>=3 && z<=10){
for(i in inicial:final){
    length(v) <- length(v)+1
    v[k] <-(z)
    moneda <- rbinom(1,1,0.5)
    if(moneda==1){
        z <- z+1
        v[k] <- z
    } else {
        z <- z-1
        v[k] <- z
    }
    k <- k + 1
    #if(k==100000) break
}
v
plot(v,type="l",lwd=4)
}

betillo(100,1000)
betillo(50,1000)
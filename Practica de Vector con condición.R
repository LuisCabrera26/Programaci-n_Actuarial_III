
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

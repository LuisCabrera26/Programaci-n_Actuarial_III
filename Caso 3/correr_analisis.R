
#obtengo los datos train y test

xt1 <- read.table("./Dataset/train/X_train.txt")
yt1 <- read.table("./Dataset/train/y_train.txt")
st1 <- read.table("./Dataset/train/subject_train.txt")


xt2 <- read.table("./Dataset/test/X_test.txt")
yt2 <- read.table("./Dataset/test/y_test.txt") 
st2 <- read.table("./Dataset/test/subject_test.txt")

#uno lo datos train y test
xt3 <- rbind(xt1, xt2)
yt3 <- rbind(yt1, yt2)
st3 <- rbind(st1, st2)

#borro los datos train y test
 
rm(xt1,yt1,st1)
rm(xt2,yt2,st2)

##  2   ##
caracteristicas <- read.table("./Dataset/features.txt")
mds <- grep("mean\\(\\)|std\\(\\)", caracteristicas[, 2])
xt3 <- xt3[, mds]
##  4   ##
#Cambio nombres
names(xt3) <- gsub("\\(\\)", "", caracteristicas[mds, 2]) 
names(xt3) <- gsub("mean", "Mean", names(xt3))
names(xt3) <- gsub("std", "Std", names(xt3))
names(xt3) <- gsub("t", "Time", names(xt3))
names(xt3) <- gsub("f", "Frequency", names(xt3))
names(xt3) <- gsub("\\(\\)", "", names(xt3))
names(xt3) <- gsub("-", "", names(xt3))
names(xt3) <- gsub("BodyBody", "Body", names(xt3))
names(xt3) <- gsub("^", "MeanOf", names(xt3))
#Elmino los datos que ya no requiero
rm(caracteristicas,mds)


actividades_train <- read.table("./Dataset/train/y_train.txt")
actividades_test <- read.table("./Dataset/test/y_test.txt")
actividades <- rbind(actividades_train,actividades_test)[,1]
#actividades <- read.table("./Dataset/activity_labels.txt")
labels <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS","SITTING", "STANDING", "LAYING")
actividades <- labels[actividades]
xt3 <- cbind(Actividad = actividades,xt3)


voluntarios_1 <- read.table("./Dataset/train/subject_train.txt")
voluntarios_2 <- read.table("./Dataset/test/subject_test.txt")
voluntarios <- rbind(voluntarios_1,voluntarios_2)[,1]
xt3 <- cbind(Voluntario = voluntarios,xt3) 


library(dplyr)#debe estar instalado antes
prom_xt3 <- xt3 %>% group_by(Voluntario,Actividad) %>% summarise_each(funs(mean))
write.table(prom_xt3,row.name = FALSE,file = "tidy_data_set.txt")


#install.packages("dplyr")


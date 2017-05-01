#! /bin/bash

####Script para correr maices_Practica 6

setwd()


##### Cargar datos
maiz<- read.delim(file= "../meta/maizteocintle_SNP50k_meta_extended.txt", header = TRUE, sep= "\t")

#####¿Qué tipo de objeto creamos al cargar la base?
class(maiz)

####### ¿Cómo se ven las primeras 6 líneas del archivo?
head(maiz)

##### ¿Cuántas muestras hay?
nrow(maiz)

##### ¿De cuántos estados se tienen muestras?
length(levels(maiz$Estado))

######aunque si le pones str te aparece el numero de niveles que hay por cada variable
str(maiz)

#####¿Cuántas muestras fueron colectadas antes de 1980?
maiz$A.o._de_colecta
sum(maiz$A.o._de_colecta<1980, na.rm=TRUE)

##### ¿Cuántas muestras hay de cada raza?
table(maiz$Raza)

##### En promedio ¿a qué altitud fueron colectadas las muestras?
mean(maiz$Altitud)

##### ¿y a qué altitud máxima y mínima fueron colectadas?
max(maiz$Altitud)
min(maiz$Altitud)

##### Crear una nueva df de datos sólo con las muestras de la raza Olotillo
olot<-maiz[maiz$Raza=="Olotillo", ]

######Crear una nueva df de datos sólo con las muestras de la raza Reventador, Jala y Ancho
tabla<-maiz$Raza %in% c("Reventador", "Jala", "Ancho")
c("Reventador", "Jala", "Ancho")
tab2<-maiz[tabla, ]

##### escribe la matriz anterior a un archivo llamado "submat.csv" en /meta.
write.csv(tab2, file= "../meta/submat.csv")







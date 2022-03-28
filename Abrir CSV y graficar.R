##################################### Abrir CSV #####################################
path<-file.choose()
datos<- read.csv(path)
print(datos)
colnames(datosEntr)=c("fecha","abrio","maximo","minimo","cerra","adjcerra","volumen")

##################################### Graficar #######################################

library(ggplot2)
ggplot(datos, aes(x=fecha, y=cerra)) + geom_line(color="blue") + geom_point(color="red")
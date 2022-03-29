##################################### Abrir CSV #####################################
path<-file.choose()
print(path)
#datos<- read.csv(path)
datos<- read.csv("BTC-USD.csv")
#datos<- read.csv("C:\\Users\\Braya\\OneDrive\\Escritorio\\RepositorioR\\Rstudio\\BTC-USD.csv")

print(datos)
colnames(datosEntr)=c("fecha","abrio","maximo","minimo","cerra","adjcerra","volumen")

##################################### Graficar #######################################

Resistencia <- c(2158.7, 1678.15, 2316, 2061.3, 2207.5, 1708.3,1784.7)
Edad <- c(15.5, 23.5, 8,17,5.5,19,24)
datos <- data.frame(Resistencia, Edad)

#install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)
ggplot(datos, aes(x=Edad, y=Resistencia)) + geom_point()
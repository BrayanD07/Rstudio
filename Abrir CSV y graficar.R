##################################### Abrir CSV #####################################
path<-file.choose()
print(path)
#datos<- read.csv(path)
datos<- read.csv("BTC-USD.csv")
#datos<- read.csv("C:\\Users\\Braya\\OneDrive\\Escritorio\\RepositorioR\\Rstudio\\BTC-USD.csv")

print(datos)
colnames(datos)=c("fecha","abrio","maximo","minimo","cerró","adjcerró","volumen")

##################################### Graficar #######################################
library(ggplot2)
ggplot(datos, aes(x=fecha, y=cerró)) + geom_line(color="blue") + geom_point(color="red")

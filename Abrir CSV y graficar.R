##################################### Abrir CSV #####################################

#path<-file.choose()
#print(path)
#datos<- read.csv(path)
#datos<- read.csv("C:\\Users\\Braya\\OneDrive\\Escritorio\\RepositorioR\\Rstudio\\BTC-USD.csv")

#La funcion read.csv nos permite leer el contenido del archivo .csv que esta en la ruta entre los parentesis
datos<- read.csv("BTC-USD.csv")
#Imprimimos los datos para verificar que se leyeron y guardaron correctamente
print(datos)
#Cambiamos los nombres de nuestras columnas 
colnames(datos)=c("fecha","abrio","maximo","minimo","cerró","adjcerró","volumen")

##################################### Graficar #######################################

#Llamamos la libreria ggplot para poder graficar
library(ggplot2)
#En la funcion ggplot primero ingrsaremos la variable donde estan los datos o parametros que graficaremos, luego en el para metro "aes" agregaremos la variable que 
#se usara para X y la variable para Y, por ultimo agregamos como queremos que se grafique que en este caso sera con puntos y con una linea roja
ggplot(datos, aes(x=fecha, y=cerró)) + geom_line(color="blue") + geom_point(color="red")

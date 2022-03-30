#install.packages("magick")
#install.packages("rsvg")
#install.packages("httpgd")

#Llamaremos estas 2 librerias que nos permiten trabajar con imagenes
library(magick)
library(rsvg)

########################### ABRIR IMAGEN ###################################

#Agregamos a una variable con la funcion image_read la imagen que espesifiquemos en la ruta entre parentesis 
tiger <- image_read('velas.jpg')
#Imprimimos la imagen para verificar que se haya guardado
plot(tiger)

########################### ROTAR IMAGEN ###################################

#Creamos un fondo a nuestra imagen para apreciar mejor la rotacion
fondo <- image_border(image_background(imagen,"#6991ff"),"#298000","60x60")
#Iniciamos los grados en 0
grados <- 0
#El for va a repetirse 30 veces cada un ciclo la imagen se va a rotar 10 grados con respecto al dondo
for(i in 1:30){
  print(i)
  plot.new()
  plot(image_rotate(fondo, grados))
  Sys.sleep(0.5)
  grados <- grados + 10
}

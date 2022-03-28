#install.packages("magick")
#install.packages("rsvg")
#install.packages("httpgd")
library(magick)
library(rsvg)

########################### ABRIR IMAGEN ###################################

tiger <- image_read('velas.jpg')
plot(tiger)
#print(tiger)

#file.show("https://github.com/Gerardo0873/Prolog2/blob/main/velas.jpg")

imagen <- image_read("velas.jpg")
#plot(imagen)


########################### ROTAR IMAGEN ###################################

fondo <- image_border(image_background(imagen,"#6991ff"),"#298000","60x60")
grados <- 0
for(i in 1:30){
  print(i)
  plot.new()
  plot(image_rotate(fondo, grados))
  Sys.sleep(0.5)
  grados <- grados + 10
}
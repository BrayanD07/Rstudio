datos<- read.csv("Datos1.csv")
colnames(datos)=c("fecha","valor")

#library(ggplot2)
#ggplot(datos, aes(x=fecha, y=valor)) + geom_line(color="blue") + geom_point(color="red")

datos2<- read.csv("Datos2.csv")
colnames(datos2)=c("fecha","valor")

library(neuralnet)
mod1 <- neuralnet(valor ~ fecha, data=scaled, hidden=c(5,4,6), threshold =0.001)

maxs = apply(datos, 2, max)
mins = apply(datos, 2, min)
scaled <- as.data.frame(scale(datos, center = mins, scale = maxs-mins))

maxs = apply(datos2, 2, max)
mins = apply(datos2, 2, min)
scaled2 <- as.data.frame(scale(datos2, center = mins, scale = maxs-mins))

#test<-data.frame(fecha=scaled$fecha)
#test<-data.frame(valor=scaled$valor)

test<-data.frame(fecha=scaled2$fecha)
myprediction<-compute(x=mod1,covariate = test)
pred_valor<-myprediction$net.result#[1:183]
pred_fecha<-scaled$fecha
pred_datos<-data.frame(pred_valor, pred_fecha)

plot(mod1)

library(gridExtra)

require(gridExtra)
plot1<-ggplot(data=scaled, aes(x=fecha,y=valor)) + geom_line(color="red") + geom_point()
plot2<-ggplot(data=pred_datos, aes(x=pred_fecha,y=pred_valor)) +geom_line(color="red") + geom_point()



grid.arrange(plot1,plot2, ncol=2)



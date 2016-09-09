#Plot 3

if (!exists("powerdata")) load("data_intermediate/powerdata.rda")


png("exploratory_graphs/plot3.png", width=480, height=480)

plot(x=powerdata$DateTime,
     y=as.character(powerdata$Sub_metering_1)%>%as.numeric,
     type="l", 
     col="black",
     xlab="",
     ylab="Energy sub metering")

lines(x=powerdata$DateTime,
      y=as.character(powerdata$Sub_metering_2)%>%as.numeric,
      col="red")

lines(x=powerdata$DateTime,
      y=as.character(powerdata$Sub_metering_3)%>%as.numeric,
      col="blue")

legend("topright",legend=names(powerdata)[7:9],col=c("black","red","blue"),pch="-")


dev.off()
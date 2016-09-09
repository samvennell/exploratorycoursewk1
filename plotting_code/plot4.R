#Plot 4

if (!exists("powerdata")) load("data_intermediate/powerdata.rda")


png("exploratory_graphs/plot4.png", width=480, height=480)

par(mfrow=c(2,2))

  #Top left (same as plot 2)
    plot(x=powerdata$DateTime,
         y=as.character(powerdata$Global_active_power)%>%as.numeric,
         type="l", 
         col="black",
         xlab="",
         ylab="Global Active Power")

  #Top right
    plot(x=powerdata$DateTime,
     y=as.character(powerdata$Voltage)%>%as.numeric,
     type="l", 
     col="black",
     xlab="datetime",
     ylab="Voltage")

  #Bottom left (same as plot 3)
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

  #Bottom right
    plot(x=powerdata$DateTime,
     y=as.character(powerdata$Global_reactive_power)%>%as.numeric,
     type="l", 
     col="black",
     xlab="datetime",
     ylab="Global_reactive_power")


dev.off()
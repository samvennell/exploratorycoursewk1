#Plot 2

if (!exists("powerdata")) load("data_intermediate/powerdata.rda")

png("exploratory_graphs/plot2.png", width=480, height=480)

plot(x=powerdata$DateTime,
     y=as.character(powerdata$Global_active_power)%>%as.numeric,
     type="l", 
     col="black",
     xlab="",
     ylab="Global Active Power (kilowatts)")

dev.off()
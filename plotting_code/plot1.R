#Plot 1

png("exploratory_graphs/plot1.png", width=480, height=480)

hist(as.character(powerdata$Global_active_power)%>%as.numeric,col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power")

dev.off()

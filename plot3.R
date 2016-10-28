#plot3
file<-"household_power_consumption.txt"
dt <- read.table(file, header= TRUE, sep =";", dec = "." )
dt1 <- dt[dt$Date %in% c("1/2/2007", "2/2/2007"), ]

date_time<-strptime(paste(dt1$Date, dt1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480) # open png device for plotting


plot(date_time, as.numeric(dt1$Sub_metering_1), type = "l", xlab = "", ylab = "Energy sub metering")
lines(date_time, as.numeric(dt1$Sub_metering_2), col="red", type = "l")
lines(date_time, as.numeric(dt1$Sub_metering_3), col="blue", type = "l")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 1, col=c("black", "red", "blue"))

dev.off() # close the png




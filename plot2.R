#plot2
file<-"household_power_consumption.txt"
dt <- read.table(file, header= TRUE, sep =";", dec = "." )
dt1 <- dt[dt$Date %in% c("1/2/2007", "2/2/2007"), ]

date_time<-strptime(paste(dt1$Date, dt1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480) # open png device for plotting


plot(date_time, as.numeric(dt1$Global_active_power), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")


dev.off() # close the png




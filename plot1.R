#plot1
file<-"household_power_consumption.txt"
dt <- read.table(file, header= TRUE, sep =";", dec = "." )
dt1 <- dt[dt$Date %in% c("1/2/2007", "2/2/2007"), ]

date_time<-strptime(paste(dt1$Date, dt1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot1.png", width=480, height=480) # open png device for plotting
hist(as.numeric(dt1$Global_active_power), main= "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off() # close the png


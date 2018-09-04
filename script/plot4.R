electricity_data <- read.table("../data/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", sep = ";", header = TRUE)
mydata <- subset(electricity_data, Date %in% c("1/2/2007", "2/2/2007"))

date_time <- strptime(paste(mydata$Date, mydata$Time), "%d/%m/%Y %H:%M:%S")

png("./ExData_Plotting1/figure/plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

plot(date_time, as.numeric(as.character(mydata$Global_active_power)), type="l", xlab = "", ylab = "Global Active Power (kilowatts)")

plot(date_time, as.numeric(as.character(mydata$Voltage)), type="l", xlab = "datetime", ylab = "Voltage")

plot(date_time, as.numeric(as.character(mydata$Sub_metering_1)), type="n", xlab = "", ylab = "Energy Sub Metering")
points(date_time, as.numeric(as.character(mydata$Sub_metering_1)), type = "l", col = "brown")
points(date_time, as.numeric(as.character(mydata$Sub_metering_2)), type = "l", col = "red")
points(date_time, as.numeric(as.character(mydata$Sub_metering_3)), type = "l", col = "blue")
legend("topright", lty = 1, col = c("brown", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(date_time, as.numeric(as.character(mydata$Global_reactive_power)), type="l", xlab = "datetime", ylab = "Global Reactive Power")
dev.off()
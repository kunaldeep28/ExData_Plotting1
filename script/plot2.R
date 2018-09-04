electricity_data <- read.table("../data/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", sep = ";", header = TRUE)
mydata <- subset(electricity_data, Date %in% c("1/2/2007", "2/2/2007"))

date_time <- strptime(paste(mydata$Date, mydata$Time), "%d/%m/%Y %H:%M:%S")
png("./ExData_Plotting1/figure/plot2.png", width = 480, height = 480)
plot(date_time, as.numeric(as.character(mydata$Global_active_power)), type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
electricity_data <- read.table("../data/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", sep = ";", header = TRUE)
mydata <- subset(electricity_data, Date %in% c("1/2/2007", "2/2/2007"))

png("./ExData_Plotting1/figure/plot1.png", width = 480, height = 480)
with(mydata, hist(as.numeric(as.character(Global_active_power)), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))
dev.off()

# Download archive
if (!file.exists("household_power_consumption.zip")) { 
  download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="household_power_consumption.zip", method="curl") 
}

dataColumnNames <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
dataColumnClasses <- c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")

data <- read.table(unz("household_power_consumption.zip", filename="household_power_consumption.txt"), na.strings="?", col.names=dataColumnNames, colClasses=dataColumnClasses, sep=";", skip=66637, nrows=2880)
data$DateTime <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %X")


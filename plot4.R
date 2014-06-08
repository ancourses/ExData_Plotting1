# Load data
source("load_data.R")

# Open PNG file
png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

plot(data$DateTime, data$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab=NA)
lines(data$DateTime, data$Global_active_power, col="black")

plot(data$DateTime, data$Voltage, type="n", ylab="Voltage", xlab="datetime")
lines(data$DateTime, data$Voltage, col="black")

plot(data$DateTime, data$Sub_metering_1, type="n", ylab="Energy submetering", xlab=NA)
lines(data$DateTime, data$Sub_metering_1, col="black")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", lwd=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), bty="n")


plot(data$DateTime, data$Global_reactive_power, type="n", ylab="Global_reactive_power", xlab="datetime")
lines(data$DateTime, data$Global_reactive_power, col="black")

dev.off()

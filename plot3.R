# Load data
source("load_data.R")

# Open PNG file
png("plot3.png", width=480, height=480)
plot(data$DateTime, data$Sub_metering_1, type="n", ylab="Energy submetering", xlab=NA)
lines(data$DateTime, data$Sub_metering_1, col="black")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", lwd=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"))
dev.off()

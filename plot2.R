# Load data
source("load_data.R")

# Open PNG file
png("plot2.png", width=480, height=480)
plot(data$DateTime, data$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab=NA)
lines(data$DateTime, data$Global_active_power)
dev.off()

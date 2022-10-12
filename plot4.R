source("helper_script.R")

# Extracts the tidy data object from the dataset
data <- get_tidy_data()

png("plot4.png", width = 480, height = 480)

par(mfrow=c(2,2))

# Plot 1
plot(data$Datetime, data$Global_active_power, type="l", xlab = "", ylab = "Global Active Power")

# Plot 2
plot(data$Datetime, data$Voltage, type="l", xlab="", ylab = "Voltage")

# Plot 3
plot(data$Datetime, data$Sub_metering_1, type="n", xlab = "", ylab = "Energy sub metering")
lines(data$Datetime, data$Sub_metering_1, type="l")
lines(data$Datetime, data$Sub_metering_2, type="l", col="red")
lines(data$Datetime, data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black", "red", "blue"), bty="n")

# Plot 4
plot(data$Datetime, data$Global_reactive_power, type="o", pch=".", lwd=1, xlab = "", ylab = "Global Reactive Power")

dev.off()

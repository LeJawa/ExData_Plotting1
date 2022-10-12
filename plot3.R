source("helper_script.R")

# Extracts the tidy data object from the dataset
data <- get_tidy_data()

png("plot3.png", width = 480, height = 480)

plot(data$Datetime, data$Sub_metering_1, type="n", xlab = "", ylab = "Energy sub metering")
lines(data$Datetime, data$Sub_metering_1, type="l")
lines(data$Datetime, data$Sub_metering_2, type="l", col="red")
lines(data$Datetime, data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black", "red", "blue"))

dev.off()

source("helper_script.R")

# Extracts the tidy data object from the dataset
data <- get_tidy_data()

png("plot2.png", width = 480, height = 480)

plot(data$Datetime, data$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()

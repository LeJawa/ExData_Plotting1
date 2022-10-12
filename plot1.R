source("helper_script.R")

# Extracts the tidy data object from the dataset
data <- get_tidy_data()

png("plot1.png", width = 480, height = 480)

hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.off()

get_tidy_data <- function() {
  
  library(dplyr)
  library(tibble)
  
  file_name = "household_power_consumption"

  # Download and/or unzip the data set
  if (!file.exists(paste0(file_name, ".txt"))){
    if (!file.exists(paste0(file_name), ".zip")){
      download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", paste0(file_name), ".zip")
    }
    unzip(paste0(file_name, ".zip"))
  }
  
  # Read all the data
  data <- read.csv("household_power_consumption.txt", sep = ";")
  
  # Extract only the days 1/2/2007 and 2/2/2007
  data <-data[grep("^[12]/2/2007", data$Date),]
  
  # Change column types to numeric
  data[,3:9] <- apply(data[,3:9], 2, as.numeric)
  
  # Create a new Datetime column by combining Date and Time and dropping these last two.
  data <- mutate(data, Datetime=strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S"), .keep="unused", .before=1)
  
  # Convert to tibble for better printing
  data <- as_tibble(data)
  
  return(data)
}

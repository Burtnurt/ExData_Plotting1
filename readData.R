unzip("houseEnergyData.zip", exdir = "houseEnergyData")
list.files("houseEnergyData")
# Load necessary package
library(data.table)


file_path <- "houseEnergyData/household_power_consumption.txt"

# Read data using fread
data <- fread(file_path, sep=";", na.strings="?")

# Convert Date column to Date type
data[, Date := as.Date(Date, format="%d/%m/%Y")]

# Filter for required dates
data <- data[Date %in% as.Date(c("2007-02-01", "2007-02-02"))]

# Combine Date and Time into a single DateTime column
data[, DateTime := as.POSIXct(paste(Date, Time), format="%Y-%m-%d %H:%M:%S")]

# View first few rows to confirm
head(data)

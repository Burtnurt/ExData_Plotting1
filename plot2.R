png("plot2.png", width=480, height=480)
> 
  > plot(data$DateTime, data$Global_active_power, type="l",
         +      xlab="", ylab="Global Active Power (kilowatts)", xaxt="n")
> 
  > start_thu <- min(data$DateTime)  # Beginning of Thursday
  > start_fri <- as.POSIXct("2007-02-02", tz="UTC")  # Midnight Friday
  > start_sat <- max(data$DateTime)  # End of dataset (Saturday label)
  > 
    > axis(1, at=c(start_thu, start_fri, start_sat), labels=c("Thu", "Fri", "Sat"))
  > 
    > dev.off()
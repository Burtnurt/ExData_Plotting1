png("plot4.png", width=480, height=480)

   # Set up a 2x2 plot layout
   par(mfrow=c(2,2))
 
   #  Top Left: Global Active Power (Same as Plot 2) 
 plot(data$DateTime, data$Global_active_power, type="l",
       +      xlab="", ylab="Global Active Power", xaxt="n")
 axis(1, at=c(min(data$DateTime), as.POSIXct("2007-02-02", tz="UTC"), max(data$DateTime)), 
       +      labels=c("Thu", "Fri", "Sat"))
 
   #  Top Right: Voltage 
 plot(data$DateTime, data$Voltage, type="l",
       +      xlab="datetime", ylab="Voltage", xaxt="n")
 axis(1, at=c(min(data$DateTime), as.POSIXct("2007-02-02", tz="UTC"), max(data$DateTime)), 
       +      labels=c("Thu", "Fri", "Sat"))

   #  Bottom Left: Energy Sub Metering (Same as Plot 3) 
 plot(data$DateTime, data$Sub_metering_1, type="l", col="black",
       +      xlab="", ylab="Energy sub metering", xaxt="n")
 lines(data$DateTime, data$Sub_metering_2, col="blue")
 lines(data$DateTime, data$Sub_metering_3, col="red")
 axis(1, at=c(min(data$DateTime), as.POSIXct("2007-02-02", tz="UTC"), max(data$DateTime)), 
       +      labels=c("Thu", "Fri", "Sat"))
 legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         +        col=c("black", "blue", "red"), lty=1, bty="n")
 
   #  Bottom Right: Global Reactive Power 
 plot(data$DateTime, data$Global_reactive_power, type="l",
       +      xlab="datetime", ylab="Global Reactive Power", xaxt="n")
 axis(1, at=c(min(data$DateTime), as.POSIXct("2007-02-02", tz="UTC"), max(data$DateTime)), 
       +      labels=c("Thu", "Fri", "Sat"))
 
   dev.off()
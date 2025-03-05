png("plot3.png", width=480, height=480)
 
   plot(data$DateTime, data$Sub_metering_1, type="l", col="black",
         +      xlab="", ylab="Energy sub metering", xaxt="n")
 
   lines(data$DateTime, data$Sub_metering_2, col="blue")
 lines(data$DateTime, data$Sub_metering_3, col="red")
 
   axis(1, at=c(min(data$DateTime), as.POSIXct("2007-02-02", tz="UTC"), max(data$DateTime)), 
         +      labels=c("Thu", "Fri", "Sat"))
 
   legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           +        col=c("black", "blue", "red"), lty=1)
 
   dev.off()
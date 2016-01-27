source("load.R")##Load data
png(filename = "plot4.png")
par(mfrow = c(2,2))
##Plot 1
plot(DateTime ,Global_active_power, type = "l",
xlab = "",
ylab="Global Active Power"
)
##Plot 2
plot(DateTime ,Voltage, type = "l",
xlab = "datetime",
ylab="Voltage"
)
##Plot 3
plot(DateTime ,Sub_metering_1, type = "l",
xlab = "",
ylab="Energy sub metering"
)
lines(DateTime,Sub_metering_2, type ="l", col = "red")
lines(DateTime,Sub_metering_3, type ="l", col = "blue")
legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1, 1, 1))
##Plot 4
plot(DateTime ,Global_reactive_power, type = "l",
xlab = "datetime",
ylab="Global_reactive_power"
)
dev.off()
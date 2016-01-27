source("load.R")##Load data
png(filename = "plot3.png")
sub_metering = as.numeric(c(Sub_metering_1, Sub_metering_2, Sub_metering_3))
plot(DateTime ,Sub_metering_1, type = "l",
xlab = "",
ylab="Energy sub metering"
)
lines(DateTime,Sub_metering_2, type ="l", col = "red")
lines(DateTime,Sub_metering_3, type ="l", col = "blue")
legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1, 1, 1))
dev.off()
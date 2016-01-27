source("load.R")##Load data
png(filename = "plot2.png")
plot(DateTime ,Global_active_power, type = "l",
xlab = "",
ylab="Global Active Power (kilowatts)"
)
dev.off()
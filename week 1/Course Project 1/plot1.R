source("load.R")##Load data
png(filename = "plot1.png")
hist(Global_active_power, main = "Global Active Power", 
xlab = "Global Active Power (kilowatts)", 
ylab = "Frequency",
col = "red",
ylim = c(0, 1200)
)
dev.off()
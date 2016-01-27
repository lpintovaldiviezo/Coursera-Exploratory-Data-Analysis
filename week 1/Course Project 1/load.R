file <- "household_power_consumption.txt"
data <- read.table(file,  header = TRUE, sep = ";", na.strings = "?",
			colClasses = c("character", "character", rep("numeric",7)))
attach(data)
date.subset <- Date == "1/2/2007" | Date == "2/2/2007"
date.data <- data[date.subset, ]
attach(date.data)
date.time <- paste(Date, Time)
date.data$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(date.data) <- 1:nrow(date.data)
attach(date.data)
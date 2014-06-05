data <- read.table("./data/hpcFeb07.txt", header = T, sep = ";", na.strings = "?")
png("plot1.png", width = 480, height = 480)
hist(data$Global_active_power, xlab =
       "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
dev.off()
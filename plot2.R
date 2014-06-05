data <- read.table("./data/hpcFeb07.txt", header = T, sep = ";", na.strings = "?")
levels(data$Date) <- c("Thu", "Fri", "Sat")
par(mfrow=c(1,1))

png("plot2.png", width = 480, height = 480)

plot.ts(data$Global_active_power, axes=F, xlab="", ylab="Global Active Power (kilowatts)")
axis(1, labels=c("Thu", "Fri","Sat"), at=c(1,1441,2881))
axis(2, labels=c(0, 2,4,6), at=c(0,2,4,6))

dev.off()

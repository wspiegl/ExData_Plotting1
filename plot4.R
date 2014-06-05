data <- read.table("./data/hpcFeb07.txt", header = T, sep = ";", na.strings = "?")
levels(data$Date) <- c("Thu", "Fri", "Sat")

png("plot4.png", width = 480, height = 480)

# getting canvas for 2x2 plots
par(mfcol=c(2,2))


# oben links
plot.ts(data$Global_active_power, axes=F, xlab="", ylab="Global Active Power")
axis(1, labels=c("Thu", "Fri","Sat"), at=c(1,1441,2881))
axis(2)
box()

# unten links
plot(data$Sub_metering_1, axes=F, xlab="", ylab="Engergy sub metering", col = "black", type="l")
lines(data$Sub_metering_2, col = "red", type="l")
lines(data$Sub_metering_3, col = "blue", type="l")


axis(1, labels=c("Thu", "Fri","Sat"), at=c(1,1441,2881))
axis(2)
box()

legend("topright", bty="n",lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))




# oben rechts
plot.ts(data$Voltage, axes=F, xlab="datetime", ylab="Voltage")
axis(1, labels=c("Thu", "Fri","Sat"), at=c(1,1441,2881))
axis(2)
box()

# unten rechts
plot.ts(data$Global_reactive_power, axes=F, xlab="datetime", ylab="Global_eactive_power")
axis(1, labels=c("Thu", "Fri","Sat"), at=c(1,1441,2881))
axis(2)
box()

par(mfrow=c(1,1))

dev.off()
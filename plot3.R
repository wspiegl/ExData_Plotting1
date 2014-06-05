data <- read.table("./data/hpcFeb07.txt", header = T, sep = ";", na.strings = "?")
levels(data$Date) <- c("Thu", "Fri", "Sat")

png("plot3.png", width = 480, height = 480)
par(mfrow=c(1,1))

plot(data$Sub_metering_1, axes=F, xlab="", ylab="Engergy sub metering", col = "black", type="l")
lines(data$Sub_metering_2, col = "red", type="l")
lines(data$Sub_metering_3, col = "blue", type="l")



axis(1, labels=c("Thu", "Fri","Sat"), at=c(1,1441,2881))
axis(2)
box()

legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


dev.off()
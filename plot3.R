source("plot_data.R")

draw.plot.three = function(){
    lab.esm = "Energy sub metering"
    with(plot.data, plot(Date, Sub_metering_1, type="l", ylab=lab.esm, xlab=""))
    lines(plot.data$Date, plot.data$Sub_metering_2, col="red")
    lines(plot.data$Date, plot.data$Sub_metering_3, col="blue")
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
}

save.plot.png = function(){
    png('plot3.png')
    draw.plot.three()
    dev.off()
}
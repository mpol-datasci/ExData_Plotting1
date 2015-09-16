source("plot_data.R")

draw.plot.two = function(){
    lab.gap = "Global Active Power (kilowats)"
    with(plot.data, plot(Date, Global_active_power, type="l", ylab=lab.gap, xlab=""))
}

save.plot.png = function(){
    png('plot2.png')
    draw.plot.two()
    dev.off()
}
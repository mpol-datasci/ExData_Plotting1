source("plot_data.R")
source("plot1.R")
source("plot2.R")
source("plot3.R")

draw.plot.four = function(){
    with(plot.data, plot(Date, Global_reactive_power, type="l", xlab="datetime"))
}
draw.plot.five = function(){
  with(plot.data, plot(Date, Voltage, type="l", xlab="datetime"))
}

save.plot.png = function(){
    png('plot4.png')
    par("mfrow"=c(2,2))
    draw.plot.two()
    draw.plot.five()
    draw.plot.three()
    draw.plot.four()
    dev.off()
}
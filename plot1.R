source("plot_data.R")

draw.plot.one = function(){
    main = "Global Active Power"
    lab.gap = "Global Active Power (kilowats)"
    with(plot.data, hist(Global_active_power, col="red", main=main, xlab=lab.gap))
}

save.plot.png = function(){
    png('plot1.png')
    draw.plot.one()
    dev.off()
}
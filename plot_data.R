Sys.setlocale(category = "LC_ALL", locale = "en_US.utf8")

if(!file.exists("household_power_consumption.txt")){
  temp = tempfile()
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
  raw = unz(temp, "household_power_consumption.txt")
  data_file = file.create("household_power_consumption.txt")
  file.append(data_file, raw)
  file.remove(temp)
}

colClasses = c("Date"="character", "Time"="character")
data <- read.table("household_power_consumption.txt", sep=";", header=T, na.strings=c("?"), colClasses = colClasses)
day.one = data[data$Date == "1/2/2007",]
day.two = data[data$Date == "2/2/2007",]
plot.data = rbind(day.one, day.two)
datetime = paste(plot.data$Date, plot.data$Time)
plot.data$Date = strptime(datetime, "%e/%m/%Y %T")
library(dplyr)
setwd("c:/Users/Abhis/ExData_Plotting1")
hpc<-read.table(file = "household_power_consumption.txt",header=T,sep = ";",na.strings = "?",dec = ".")
data1 <- subset(hpc, Date %in%c("1/2/2007","2/2/2007"))
hist(data1$Global_active_power,col = "red",xlab = "Global Active Power(Kilowatts)",ylab = "Frequency",main = "Global Active Power")
png(filename = "plot1.png",width = 480,height = 480)
hist(data1$Global_active_power,col = "red",xlab = "Global Active Power(Kilowatts)",ylab = "Frequency",main = "Global Active Power")
dev.off()


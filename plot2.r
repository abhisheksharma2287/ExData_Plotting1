library(dplyr)
setwd("c:/Users/Abhis/ExData_Plotting1")
hpc<-read.table(file = "household_power_consumption.txt",header=T,sep = ";",na.strings = "?",dec = ".")
data1 <- subset(hpc, Date %in%c("1/2/2007","2/2/2007"))
time2<-strptime(paste(data1$Date, data1$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
data2<-cbind(data1,time2)
with(data2,plot(data2$time2,data2$Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)"))
png("plot2.png",width = 480,height = 480)
with(data2,plot(data2$time2,data2$Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()



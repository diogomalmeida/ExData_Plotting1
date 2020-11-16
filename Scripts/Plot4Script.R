# Reading the data
dataset<-read.table(".//exdata_data_household_power_consumption//household_power_consumption.txt",sep = ";",header = FALSE,skip=66637,nrows=2880)

# Plot 4
# Setting 4 plots in the screen
par(mfcol=c(2,2))
# Plotting 1º graph
plot(dataset$V3,xaxt = "n", ylab = "Global Active Power",xlab = "",type = "l")
axis(1, at=0, labels="Thu")
axis(1, at=1440, labels="Fri")
axis(1, at=2880, labels="Sat")
# Plotting 2º graph
plot(dataset$V7,xaxt = "n", ylab = "Energy sub metering",xlab = "", type = "l")
lines(dataset$V8, col="red")
lines(dataset$V9, col="blue")
axis(1, at=0, labels="Thu")
axis(1, at=1440, labels="Fri")
axis(1, at=2880, labels="Sat")
legend(col = c("black","blue","red"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1, cex = 0.63, bty="n",x = 500, y = 45,inset=0,y.intersp=.3)
# Plotting 3º graph
plot(dataset$V5,xaxt = "n", ylab = "Voltage",xlab = "datetime", type = "l")
axis(1, at=0, labels="Thu")
axis(1, at=1440, labels="Fri")
axis(1, at=2880, labels="Sat")
# Plotting 4º graph
plot(dataset$V4,xaxt = "n", ylab = "Energy sub metering", xlab = "datetime",type = "l")
axis(1, at=0, labels="Thu")
axis(1, at=1440, labels="Fri")
axis(1, at=2880, labels="Sat")
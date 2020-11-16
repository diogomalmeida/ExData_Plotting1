# Reading the data
dataset<-read.table(".//exdata_data_household_power_consumption//household_power_consumption.txt",sep = ";",header = FALSE,skip=66637,nrows=2880)

# Plot 3
plot(dataset$V7,xaxt = "n", ylab = "Energy sub metering", type = "l")
lines(dataset$V8, col="red")
lines(dataset$V9, col="blue")
# Setting axes
axis(1, at=0, labels="Thu")
axis(1, at=1440, labels="Fri")
axis(1, at=2880, labels="Sat")
legend("topright",col = c("black","blue","red"), legend = c("sub_metering_1","sub_metering_2","sub_metering_3"),lty = 1, cex = 0.7)

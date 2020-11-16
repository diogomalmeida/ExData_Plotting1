# Reading the data
dataset<-read.table(".//exdata_data_household_power_consumption//household_power_consumption.txt",sep = ";",header = FALSE,skip=66637,nrows=2880)

# Plot 2
plot(dataset$V3,xaxt = "n", ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")
# Setting axes
axis(1, at=0, labels="Thu")
axis(1, at=1440, labels="Fri")
axis(1, at=2880, labels="Sat")
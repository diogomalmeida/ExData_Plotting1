# Reading the data
dataset<-read.table(".//exdata_data_household_power_consumption//household_power_consumption.txt",sep = ";",header = FALSE,skip=66637,nrows=2880)

# Plot 1
hist(dataset$V3, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
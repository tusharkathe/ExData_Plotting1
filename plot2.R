setwd('C:\\Users\\Admin\\Documents\\Exploratory Data Analysis')
getwd()
# read the data into R
dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Plot 2
# convert data and time to specific format
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
# open the device
png("plot2.png", width=480, height=480)
# plot the figure
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
# close the device
dev.off()

setwd('C:\\Users\\Admin\\Documents\\Exploratory Data Analysis')
getwd()
# read the data into R
dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
# Plot 1
globalActivePower <- as.numeric(subSetData$Global_active_power)
# open the device
png("plot1.png", width=480, height=480)
# plot the figure
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
# close the device
dev.off()



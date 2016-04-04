# ----------------------------------------------------------
# Getting the full dataset
# ----------------------------------------------------------
dataFile <- "./ExpDataAnalysis/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# ----------------------------------------------------------
# Subsetting the data
# ----------------------------------------------------------
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# ----------------------------------------------------------
# Plot 1
# ----------------------------------------------------------
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
#Plot1.R
setwd("~/Desktop/R_Classes/Module_4/")
CP1_Data <- "~/Desktop/R_Classes/Module_4/household_power_consumption.txt" 
myData <- read.table(CP1_Data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Use_myData <- myData[myData$Date %in% c("1/2/2007","2/2/2007") ,]

GAPower <- as.numeric(Use_myData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GAPower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
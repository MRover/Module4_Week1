#Plot2.R
setwd("~/Desktop/R_Classes/Module_4/")
CP1_Data <- "~/Desktop/R_Classes/Module_4/household_power_consumption.txt" 
myData <- read.table(CP1_Data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Use_myData <- myData[myData$Date %in% c("1/2/2007","2/2/2007") ,]

DT <- strptime(paste(Use_myData$Date, Use_myData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAPower <- as.numeric(Use_myData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(DT, GAPower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
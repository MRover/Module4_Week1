#Plot3.R
setwd("~/Desktop/R_Classes/Module_4/")
CP1_Data <- "~/Desktop/R_Classes/Module_4/household_power_consumption.txt" 
myData <- read.table(CP1_Data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Use_myData <- myData[myData$Date %in% c("1/2/2007","2/2/2007") ,]

DT <- strptime(paste(Use_myData$Date, Use_myData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAPower <- as.numeric(Use_myData$Global_active_power)
SM1 <- as.numeric(Use_myData$Sub_metering_1)
SM2 <- as.numeric(Use_myData$Sub_metering_2)
SM3 <- as.numeric(Use_myData$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(DT, SM1, type="l", ylab="Energy Submetering", xlab="")
lines(DT, SM2, type="l", col="red")
lines(DT, SM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
#Fist make sure the data is in the current directory then
# Read Data
household_data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors=FALSE, dec=".")

# subset needed data
household_sub_data <- subset(household_data, Date %in% c("1/2/2007","2/2/2007") )

datetime <- strptime(paste(household_sub_data$Date, household_sub_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

subMetering1 <- as.numeric(household_sub_data$Sub_metering_1)
subMetering2 <- as.numeric(household_sub_data$Sub_metering_2)
subMetering3 <- as.numeric(household_sub_data$Sub_metering_3)


### ploting the data
#1- open PNG file
png("plot3.png", width=480, height=480)

#2- generate plot diagram
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

#3- close PNG file
dev.off()


#Fist make sure the data is in the current directory then
# Read Data
household_data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors=FALSE, dec=".")

# subset needed data
household_sub_data <- subset(household_data, Date %in% c("1/2/2007","2/2/2007") )

datetime <- strptime(paste(household_sub_data$Date, household_sub_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


### ploting the data
#1- open PNG file
png("plot2.png", width=480, height=480)

#2- generate plot diagram
plot(datetime, as.numeric(household_sub_data$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")

#3- close PNG file
dev.off()


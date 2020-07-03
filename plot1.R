#Fist make sure the data is in the current directory then
# Read Data
household_data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors=FALSE, dec=".")

# subset needed data
household_sub_data <- subset(household_data, Date %in% c("1/2/2007","2/2/2007") )


### ploting the data
#1- open PNG file
png("plot1.png", width=480, height=480)

#2- generate histogram
hist( as.numeric(household_sub_data$Global_active_power), col="red", main = "Global Active Power", xlab = "Global Active Power (Kilowatts)")

#3- close PNG file
dev.off()



input<- file("C:\\coursera\\Exploratory Analysis\\ProgrammingAssignment1\\household_power_consumption.txt")
finaldata <- read.table(text = grep("^[1,2]/2/2007", readLines(input), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

#Plot histogram 
hist(finaldata$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")


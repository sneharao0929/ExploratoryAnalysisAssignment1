### Draw graph 3

### Read the data
data1 <- read.csv("C:\\coursera\\Exploratory Analysis\\ProgrammingAssignment1\\household_power_consumption.txt", header = T, sep = ';', 
                  na.strings = "?", nrows = 2075259, check.names = F, 
                  stringsAsFactors = F, comment.char = "", quote = '\"')




head(data)

## convert into date object
data1$Date <- as.Date(data1$Date, format = "%d/%m/%Y")

## Extract the data for Feb
data <- subset(data1, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

## Paster datae and time
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)


with(data, {
        plot(Sub_metering_1 ~ Datetime, type = "l", 
             ylab = "Global Active Power (kilowatts)", xlab = "")
        lines(Sub_metering_2 ~ Datetime, col = 'Red')
        lines(Sub_metering_3 ~ Datetime, col = 'Blue')
})
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
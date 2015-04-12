
### Darw graph 2

### Read the data
data1 <- read.csv("C:\\coursera\\Exploratory Analysis\\ProgrammingAssignment1\\household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')




head(data)

## convert into date object
data1$Date <- as.Date(data1$Date, format = "%d/%m/%Y")

## Extract the data for Feb
data <- subset(data1, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

## Paste date and time
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## Plot the graph
plot(data$Global_active_power ~ data$Datetime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")



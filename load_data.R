#Exploratory data analysis
#Course project #1

#source: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

#Reading in the data
#assuming the file was downloaded and unzipped, path might be changed
load_data <- function() {
    #save the column names first
    headers <- read.table("./Data/household_power_consumption.txt", header=T, sep=";", nrows=1)
    headers <- names(headers)
    
    #read the relvant subset of the data
    data <- read.table("./Data/household_power_consumption.txt", header=T, sep=";", na.strings="?", 
                       nrows=10000, quote="", skip=60000, col.names=headers)
    #only using data from the dates 2007-02-01 and 2007-02-02
    subset <- data$Date == "1/2/2007" | data$Date == "2/2/2007"
    power_data <- data[subset,]
    
    #change the type of the Date and the Time colomn
    power_data$Time <- strptime(paste(power_data$Date, power_data$Time), "%d/%m/%Y %H:%M:%S")
    power_data$Date <- as.Date(power_data$Date, format="%d/%m/%Y")
    
    return(power_data)
}

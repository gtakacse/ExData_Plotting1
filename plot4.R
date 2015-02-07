#Recreating plot #4
source("./ExData_Plotting1/load_data.R")
source("./ExData_Plotting1/plot2.R")
source("./ExData_Plotting1//plot3.R")

plot4 <- function(power_data=NULL){
    #load the data it isn't loaded yet
    if(is.null(power_data))
        power_data <- load_data()
    
    #create the output file
    png("./ExData_Plotting1/plot4.png", width=480, height=480)
    
    #divide the plot into 4 subparts for the 4 separate plot
    par(mfrow=c(2,2))
    
    #subplot1 is the same as plot 2
    plot(power_data$Time, power_data$Global_active_power, type="l",
         ylab="Global Acitve Power (kilowatts)", xlab="")
    
    #subplot2 shows the changes of voltage over time
    plot(power_data$Time, power_data$Voltage, "l",
         main="", ylab="Voltage", xlab="datetime")
    
    #subplot3 is the same as plot 3
    plot(power_data$Time, power_data$Sub_metering_1, type="n", main="", 
         ylab="Energy sub metering", xlab="")
    points(power_data$Time, power_data$Sub_metering_1, "l", col = "black")
    points(power_data$Time, power_data$Sub_metering_2, "l", col = "red")
    points(power_data$Time, power_data$Sub_metering_3, "l", col = "blue")
    #add the legend
    legend("topright", col=c("black", "red", "blue"), lty=c(1,1,1),
           legend=c(names(power_data)[7], names(power_data)[8], names(power_data)[9]))
    
    
    #subplot4 shows the global reactive power over time
    plot(power_data$Time, power_data$Global_reactive_power, "l", main="",
         ylab="Global_reactive_power", xlab="datetime")
    
    #finished, so close png
    dev.off()
    
}

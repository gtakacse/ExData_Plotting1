#Recreating plot #3
source("./ExData_Plotting1/load_data.R") #path might have to be changed

plot3 <- function(power_data=NULL){
    if (is.null(power_data))
        power_data <- load_data()
    
    png("./ExData_Plotting1/plot3.png", width = 480, height =480)
    
    #create a plot with the different energy sub metering values over time
    plot(power_data$Time, power_data$Sub_metering_1, type="n", main="", 
         ylab="Energy sub metering", xlab="")
    points(power_data$Time, power_data$Sub_metering_1, "l", col = "black")
    points(power_data$Time, power_data$Sub_metering_2, "l", col = "red")
    points(power_data$Time, power_data$Sub_metering_3, "l", col = "blue")
    #add the legend
    legend("topright", col=c("black", "red", "blue"), lty=c(1,1,1),
           legend=c(names(power_data)[7], names(power_data)[8], names(power_data)[9]))
    
    #close png
    dev.off()
}


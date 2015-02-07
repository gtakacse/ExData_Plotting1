#Reconstructing plot #1
source("./ExData_Plotting1/load_data.R") #path might have to be changed

plot1 <- function(power_data=NULL) {
    #load the data it isn't loaded yet
    if(is.null(power_data))
        power_data <- load_data()
    
    #create the output file
    png("./ExData_Plotting1/plot1.png", width=480, height=480)
    
    #A histogram with the requency of the Global_active_power values
    hist(power_data$Global_active_power, col="red", xlab="Global Acitve Power (kilowatts)",
         main="Global Active Power")
    
    #close png file
    dev.off()
}


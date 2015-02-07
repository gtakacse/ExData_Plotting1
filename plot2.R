#Recreating plot #2
source("./ExData_Plotting1/load_data.R") #path might need to be changed

plot2 <- function(power_data=NULL) {
    if (is.null(power_data))
        power_data <- load_data()
    
    #create a png file
    png("./ExData_Plotting1/plot2.png", width=480, height=480)
    
    #the system clock might have to be changed to plot the weekdays in English
    #Sys.setlocale("LC_TIME", "English")
    
    #plot global acive power consumption over time
    plot(power_data$Time, power_data$Global_active_power, type="l",
         ylab="Global Acitve Power (kilowatts)", xlab="")
    
    #close png
    dev.off()
    
}


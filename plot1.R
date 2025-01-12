library(dplyr)
library(grDevices)
setwd('D:/Data Science/4. Exploratory Data Analysis/Project 1')
house_pwr_cons <- read.table(file = "hpc.txt", header = TRUE, sep = ';', na.strings = '?')
hpc <- filter(house_pwr_cons, as.Date(Date, format="%d/%m/%Y") == '2007-02-01' | as.Date(Date, format="%d/%m/%Y") == '2007-02-02')
png(file = "plot1.png", height = 480, width = 480, units = "px")
hist(hpc$Global_active_power, col = 'red', main = 'Global Active Power', xlab = 'Global Active Power(kilowatts)', ylab = 'Frequency')
dev.off()
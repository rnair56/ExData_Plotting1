setwd("E:\\Coursera\\Exploratory Data Analysis\\Assignments\\Week1\\Data")
household_power_consumption<-read.table("household_power_consumption.txt",sep=";",stringsAsFactors=F)
dim(household_power_consumption)
colnames(household_power_consumption)<-c('Date',  'Time',	'Global_active_power',
                                         'Global_reactive_power',	'Voltage',	'Global_intensity',	'Sub_metering_1',	
                                         'Sub_metering_2',	'Sub_metering_3')


household_power_consumption$Global_active_power<-as.numeric(household_power_consumption$Global_active_power)


##Saving the plot
png(filename="Plot1.png")
hist(household_power_consumption$Global_active_power,col="red")
dev.off()

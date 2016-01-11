> getwd()
[1] "C:/Users/user/Documents"
> setwd("D:/mphil/coursera/2. exploratory data analysis")
> rawdata<-read.table("./household_power_consumption.txt",header = T,sep=";")
> dim(rawdata)
[1] 2075259       9
> data$Date<-as.Date(data$Date,format="%d/%m/%Y")
Error in as.Date.default(data$Date, format = "%d/%m/%Y") : 
  do not know how to convert 'data$Date' to class ※Date§
> rawdata$Date<-as.Date(rawdata$Date,format="%d/%m/%Y")
> df<-rawdata[(rawdata$Date=="2007-02-01")|(rawdata$Date=="2007-02-02"),]
> df$Global_active_power<-as.numeric(as.character(df$Global_active_power))
> df$Global_reactive_power<-as.numeric(as.character(df$Global_reactive_power))
> df<-transform(df,timestamp=as.POSIXct(paste(Date,Time)),"%d/%m/%Y %H:%M:%S")
> df$Sub_metering_1<-as.numeric(as.character(df$Sub_metering_1))
> df$Sub_metering_2<-as.numeric(as.character(df$Sub_metering_2))
> df$Sub_metering_3<-as.numeric(as.character(df$Sub_metering_3))
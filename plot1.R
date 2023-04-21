unzip("exdata_data_NEI_data.zip")

classCode<-readRDS("Source_Classification_Code.rds")
summaryPM25<-readRDS("summarySCC_PM25.rds")


## 1) Have total emissions from PM2.5 decreased in the United States from 1999 to 
## 2008? Using the base plotting system, make a plot showing the total PM2.5 
## emission from all sources for each of the years 1999, 2002, 2005, and 2008.

year<- c("1999", "2002", "2005", "2008")
PMsumByYear<-vector()

for (i in 1:4){
 PMsumByYear[i] <- sum(as.numeric(summaryPM25$Emissions[summaryPM25$year==year[i]]))
}

png(filename = "plot1.png")

plot(year,PMsumByYear, type = "l"
     ,xlab="Year",ylab = "Total PM2.5 Emission from All Sources")

dev.off()

## 2) Have total emissions from PM2.5 decreased in the Baltimore City, Maryland 
## (fips == "24510"fips == "24510") from 1999 to 2008? Use the base plotting 
## system to make a plot answering this question.

year<- c("1999", "2002", "2005", "2008")
BaltimorePMsumByYear<-vector()

for (i in 1:4){
  BaltimorePMsumByYear[i] <- sum(
    as.numeric(
      summaryPM25$Emissions[summaryPM25$fips=="24510" & summaryPM25$year==year[i]]
      )
    )
}

png(filename = "plot2.png")

plot(year,BaltimorePMsumByYear, type = "l"
     ,xlab="Year",ylab = "Total PM2.5 Emission from All Sources", main = "Baltimore")

dev.off()


## 3) Of the four types of sources indicated by the typetype (point, nonpoint, 
## onroad, nonroad) variable, which of these four sources have seen decreases 
## in emissions from 1999–2008 for Baltimore City? Which have seen increases in 
##emissions from 1999–2008? Use the ggplot2 plotting system to make a plot 
## answer this question.




## 4) Across the United States, how have emissions from coal combustion-related 
## sources changed from 1999–2008?


## 5) How have emissions from motor vehicle sources changed from 1999–2008 in 
## Baltimore City?

## 6) Compare emissions from motor vehicle sources in Baltimore City with 
## emissions from motor vehicle sources in Los Angeles County, California 
## (fips == "06037"fips == "06037"). Which city has seen greater changes over 
## time in motor vehicle emissions?


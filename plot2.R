baltimore <- subset(NEI, NEI$fips == "24510")

totalBaltimore <- aggregate(Emissions ~ year, baltimore, sum)

png(filename="plot2.png", width=480, height = 480 )

plot(totalBaltimore$year, totalBaltimore$Emissions, type = "o", 
     main = expression("Total Baltimore" ~ PM[2.5] ~ "Emissions by Year"), 
     xlab = "Year", ylab = expression("Total Baltimore "~ PM[2.5] ~ "Emissions"), 
     col = "steelblue3")
